library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_I2S_slave_stream_v1_0_S00_AXIS is
	generic (
		-- Users to add parameters here
		DATA_WIDTH : integer := 24;
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
		tx_left_data  : out std_logic_vector(DATA_WIDTH-1 downto 0);
        tx_right_data : out std_logic_vector(DATA_WIDTH-1 downto 0);
        load_next     : in  std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- AXI4Stream sink: Clock
		S_AXIS_ACLK	: in std_logic;
		-- AXI4Stream sink: Reset
		S_AXIS_ARESETN	: in std_logic;
		-- Ready to accept data in
		S_AXIS_TREADY	: out std_logic;
		-- Data in
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		-- Byte qualifier
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- Indicates boundary of last packet
		S_AXIS_TLAST	: in std_logic;
		-- Data is in valid
		S_AXIS_TVALID	: in std_logic
	);
end AXI_I2S_slave_stream_v1_0_S00_AXIS;

architecture implementation of AXI_I2S_slave_stream_v1_0_S00_AXIS is

    -- Registres internes pour stocker l'échantillon courant et le suivant
    signal left_buffer  : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal right_buffer : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    
    -- États pour savoir quel canal le DMA est en train d'envoyer
    type t_rx_state is (IDLE, GET_LEFT, GET_RIGHT);
    signal rx_state : t_rx_state := GET_LEFT;
    
    signal axis_tready_reg : std_logic := '0';

begin

    S_AXIS_TREADY <= axis_tready_reg;

    -- Processus de réception des données depuis le DMA (AXI-Stream Slave)
process(S_AXIS_ACLK)
begin
    if rising_edge(S_AXIS_ACLK) then
        if S_AXIS_ARESETN = '0' then
            rx_state        <= IDLE;
            axis_tready_reg <= '0';
            tx_left_data    <= (others => '0');
            tx_right_data   <= (others => '0');
        else
            case rx_state is
                when IDLE =>
                    if load_next = '1' then
                        axis_tready_reg <= '1';
                        rx_state        <= GET_LEFT;
                    end if;

                when GET_LEFT =>
                    if axis_tready_reg = '1' and S_AXIS_TVALID = '1' then
                        tx_left_data <= S_AXIS_TDATA(DATA_WIDTH-1 downto 0);
                        rx_state     <= GET_RIGHT;
                    end if;

                when GET_RIGHT =>
                    if axis_tready_reg = '1' and S_AXIS_TVALID = '1' then
                        tx_right_data   <= S_AXIS_TDATA(DATA_WIDTH-1 downto 0);
                        axis_tready_reg <= '0';
                        rx_state        <= IDLE;
                    end if;

                when others =>
                    rx_state <= IDLE;
            end case;
        end if;
    end if;
end process;

end implementation;



            
--                -- Par défaut, on se déclare prêt à recevoir du DMA
--                axis_tready_reg <= '1';

--                -- Quand un transfert AXI-Stream valide se produit (Valid + Ready)
--                if S_AXIS_TVALID = '1' and axis_tready_reg = '1' then
--                    case rx_state is
--                        when GET_LEFT =>
--                            left_buffer <= S_AXIS_TDATA(DATA_WIDTH-1 downto 0);
--                            rx_state    <= GET_RIGHT;

--                        when GET_RIGHT =>
--                            right_buffer <= S_AXIS_TDATA(DATA_WIDTH-1 downto 0);
--                            rx_state     <= GET_LEFT;

--                        when others =>
--                            rx_state <= GET_LEFT;
--                    end case;
--                end if;
--            end if;
--        end if;
--    end process;

--    -- Processus de transfert vers le transceiver I2S
--    -- Dès que le transceiver demande un nouvel échantillon (load_next), on lui sert les tampons
--    process(S_AXIS_ACLK)
--    begin
--        if rising_edge(S_AXIS_ACLK) then
--            if S_AXIS_ARESETN = '0' then
--                tx_left_data  <= (others => '0');
--                tx_right_data <= (others => '0');
--            else
--                if load_next = '1' then
--                    tx_left_data  <= left_buffer;
--                    tx_right_data <= right_buffer;
--                end if;
--            end if;
--        end if;
--    end process;