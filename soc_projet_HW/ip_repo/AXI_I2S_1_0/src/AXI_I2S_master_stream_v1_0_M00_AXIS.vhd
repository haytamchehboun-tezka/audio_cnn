library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_I2S_master_stream_v1_0_M00_AXIS is
	generic (
		-- Users to add parameters here
        DATA_WIDTH : integer := 24;
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		-- Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
		C_M_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
		rx_left_data  : in  std_logic_vector(DATA_WIDTH-1  downto 0);
        rx_right_data : in  std_logic_vector(DATA_WIDTH-1  downto 0);
        data_valid    : in  std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global ports
		M_AXIS_ACLK	: in std_logic;
		-- 
		M_AXIS_ARESETN	: in std_logic;
		-- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		M_AXIS_TVALID	: out std_logic;
		-- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		-- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- TLAST indicates the boundary of a packet.
		M_AXIS_TLAST	: out std_logic;
		-- TREADY indicates that the slave can accept a transfer in the current cycle.
		M_AXIS_TREADY	: in std_logic
	);
end AXI_I2S_master_stream_v1_0_M00_AXIS;

architecture implementation of AXI_I2S_master_stream_v1_0_M00_AXIS is

    -- 1024 octets (BUFFER_SIZE) = 256 mots de 32 bits (128 paires Gauche + Droite)
    constant C_PACKET_WORDS : integer := 256;

    type t_tx_state is (IDLE, SEND_LEFT, SEND_RIGHT);
    signal tx_state        : t_tx_state := IDLE;
    signal axis_tvalid_reg : std_logic := '0';
    signal axis_tlast_reg  : std_logic := '0';
    signal word_cnt        : integer range 0 to C_PACKET_WORDS - 1 := 0;

    -- Mémorisation des données audio signées dès le front de data_valid
    signal left_latched    : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal right_latched   : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

begin
    -- Assignations des sorties AXI4-Stream
    M_AXIS_TVALID <= axis_tvalid_reg;
    M_AXIS_TLAST  <= axis_tlast_reg;
    M_AXIS_TSTRB  <= (others => '1');

    process(M_AXIS_ACLK)
    begin
        if rising_edge(M_AXIS_ACLK) then
            if M_AXIS_ARESETN = '0' then
                tx_state        <= IDLE;
                axis_tvalid_reg <= '0';
                axis_tlast_reg  <= '0';
                word_cnt        <= 0;
                M_AXIS_TDATA    <= (others => '0');
                left_latched    <= (others => '0');
                right_latched   <= (others => '0');
            else
                case tx_state is
                    when IDLE =>
                        axis_tvalid_reg <= '0';
                        axis_tlast_reg  <= '0';
                        if data_valid = '1' then
                            left_latched  <= rx_left_data;
                            right_latched <= rx_right_data;

                            -- Extension de signe 24 -> 32 bits pour le canal Gauche
                            M_AXIS_TDATA    <= (31 downto DATA_WIDTH => rx_left_data(DATA_WIDTH-1)) & rx_left_data;
                            axis_tvalid_reg <= '1';
                            axis_tlast_reg  <= '0';
                            tx_state        <= SEND_LEFT;
                        end if;

                    when SEND_LEFT =>
                        if axis_tvalid_reg = '1' and M_AXIS_TREADY = '1' then
                            word_cnt <= word_cnt + 1;

                            -- Extension de signe 24 -> 32 bits pour le canal Droit
                            M_AXIS_TDATA    <= (31 downto DATA_WIDTH => right_latched(DATA_WIDTH-1)) & right_latched;
                            axis_tvalid_reg <= '1';

                            if word_cnt + 1 = C_PACKET_WORDS - 1 then
                                axis_tlast_reg <= '1';
                            else
                                axis_tlast_reg <= '0';
                            end if;

                            tx_state <= SEND_RIGHT;
                        end if;

                    when SEND_RIGHT =>
                        if axis_tvalid_reg = '1' and M_AXIS_TREADY = '1' then
                            axis_tvalid_reg <= '0';
                            axis_tlast_reg  <= '0';

                            if word_cnt = C_PACKET_WORDS - 1 then
                                word_cnt <= 0;
                            else
                                word_cnt <= word_cnt + 1;
                            end if;

                            tx_state <= IDLE;
                        end if;

                    when others =>
                        tx_state        <= IDLE;
                        axis_tvalid_reg <= '0';
                        axis_tlast_reg  <= '0';
                end case;
            end if;
        end if;
    end process;

end implementation;