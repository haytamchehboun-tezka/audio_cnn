library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity i2s_transceiver is
    Generic (
        DATA_WIDTH : integer := 24
    );
    Port (
        mclk          : in  std_logic; -- Horloge maître (12.288 MHz)
        resetn        : in  std_logic; -- Reset synchrone actif BAS
        
        -- Interface Parallèle (Côté PL / Votre logique)
        -- Canaux de lecture (Playback -> vers DAC via sdata_tx)
        tx_left_data  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        tx_right_data : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        load_next     : out std_logic; -- Pulsé pour demander les échantillons suivants (TX)
        
        -- Canaux d'enregistrement (Record -> depuis ADC via sdata_rx)
        rx_left_data  : out std_logic_vector(DATA_WIDTH-1 downto 0);
        rx_right_data : out std_logic_vector(DATA_WIDTH-1 downto 0);
        data_valid    : out std_logic; -- Pulsé à '1' quand une nouvelle paire RX est prête
        
        -- Interface I2S Physique (Vers le codec SSM2603)
        bclk_out      : out std_logic;
        lrclk_out     : out std_logic;
        sdata_tx      : out std_logic; -- Sortie vers DAC
        sdata_rx      : in  std_logic  -- Entrée depuis ADC
    );
end i2s_transceiver;

architecture Behavioral of i2s_transceiver is

    signal bclk_reg      : std_logic := '0';
    signal lrclk_reg     : std_logic := '0';
    signal bclk_div      : integer range 0 to 3 := 0;
    signal bit_counter   : integer range 0 to 63 := 0;
    
    signal bclk_rising   : std_logic := '0';
    signal bclk_falling  : std_logic := '0';

    -- Registres pour l'émission (TX)
    signal tx_shift      : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    
    -- Registres pour la réception (RX)
    signal rx_shift      : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal rx_left_int   : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal rx_right_int  : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    
    signal sdata_rx_sync : std_logic_vector(1 downto 0) := (others => '0');

begin

    -- Synchronisation du signal asynchrone sdata_rx sur MCLK (Correction : resetn = '0')
    process(mclk)
    begin
        if rising_edge(mclk) then
            if resetn = '0' then
                sdata_rx_sync <= (others => '0');
            else
                sdata_rx_sync <= sdata_rx_sync(0) & sdata_rx;
            end if;
        end if;
    end process;

    -- 1. Génération unique des horloges BCLK et LRCLK (MCLK = 12.288 MHz -> BCLK = 3.072 MHz -> Fs = 48 kHz)
    process(mclk)
    begin
        if rising_edge(mclk) then
            if resetn = '0' then
                bclk_div     <= 0;
                bclk_reg     <= '0';
                bit_counter  <= 0;
                lrclk_reg    <= '0';
                bclk_rising  <= '0';
                bclk_falling <= '0';
            else
                bclk_rising  <= '0';
                bclk_falling <= '0';
                
                if bclk_div = 1 then
                    bclk_reg    <= '1';
                    bclk_rising <= '1';
                    bclk_div    <= bclk_div + 1;
                elsif bclk_div = 3 then
                    bclk_reg     <= '0';
                    bclk_falling <= '1';
                    bclk_div     <= 0;
                    
                    if bit_counter = 63 then
                        bit_counter <= 0;
                        lrclk_reg   <= not lrclk_reg;
                    else
                        bit_counter <= bit_counter + 1;
                    end if;
                else
                    bclk_div <= bclk_div + 1;
                end if;
            end if;
        end if;
    end process;

    bclk_out  <= bclk_reg;
    lrclk_out <= lrclk_reg;


    -- 2. Logique de Transmission (TX - PL vers DAC, format I2S décalé de 1 BCLK)
    process(mclk)
    begin
        if rising_edge(mclk) then
            if resetn = '0' then
                sdata_tx  <= '0';
                tx_shift  <= (others => '0');
                load_next <= '0';
            else
                load_next <= '0';

                if bclk_falling = '1' then
                    if bit_counter = 0 then
                        -- 1er coup d'horloge I2S (délai de 1 bit après changement de LRCLK)
                        sdata_tx  <= '0';
                        load_next <= '1'; -- Demande la prochaine paire L/R à la PL
                    elsif bit_counter = 1 then
                        -- MSB du canal Gauche
                        sdata_tx <= tx_left_data(DATA_WIDTH-1);
                        tx_shift <= tx_left_data(DATA_WIDTH-2 downto 0) & '0';
                    elsif bit_counter >= 2 and bit_counter <= DATA_WIDTH then
                        sdata_tx <= tx_shift(DATA_WIDTH-1);
                        tx_shift <= tx_shift(DATA_WIDTH-2 downto 0) & '0';
                    elsif bit_counter = 32 then
                        -- 1er coup d'horloge I2S du canal Droit (délai de 1 bit)
                        sdata_tx <= '0';
                    elsif bit_counter = 33 then
                        -- MSB du canal Droit
                        sdata_tx <= tx_right_data(DATA_WIDTH-1);
                        tx_shift <= tx_right_data(DATA_WIDTH-2 downto 0) & '0';
                    elsif bit_counter >= 34 and bit_counter <= 32 + DATA_WIDTH then
                        sdata_tx <= tx_shift(DATA_WIDTH-1);
                        tx_shift <= tx_shift(DATA_WIDTH-2 downto 0) & '0';
                    else
                        sdata_tx <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;


    -- 3. Logique de Réception (RX - ADC vers PL, capture exacte des 24 bits utiles)
    process(mclk)
    begin
        if rising_edge(mclk) then
            if resetn = '0' then
                rx_shift     <= (others => '0');
                rx_left_int  <= (others => '0');
                rx_right_int <= (others => '0');
                data_valid   <= '0';
            else
                data_valid <= '0';

                if bclk_rising = '1' then
                    -- Canal Gauche : bits utiles aux indices 1 à 24 (après 1 bit de délai I2S à l'indice 0)
                    if bit_counter >= 1 and bit_counter <= DATA_WIDTH then
                        rx_shift <= rx_shift(DATA_WIDTH-2 downto 0) & sdata_rx_sync(1);
                        if bit_counter = DATA_WIDTH then
                            rx_left_int <= rx_shift(DATA_WIDTH-2 downto 0) & sdata_rx_sync(1);
                        end if;

                    -- Canal Droit : bits utiles aux indices 33 à 56 (après 1 bit de délai I2S à l'indice 32)
                    elsif bit_counter >= 33 and bit_counter <= 32 + DATA_WIDTH then
                        rx_shift <= rx_shift(DATA_WIDTH-2 downto 0) & sdata_rx_sync(1);
                        if bit_counter = 32 + DATA_WIDTH then
                            rx_right_int <= rx_shift(DATA_WIDTH-2 downto 0) & sdata_rx_sync(1);
                            data_valid   <= '1'; -- Paire stéréo complète prête pour M00_AXIS
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

    rx_left_data  <= rx_left_int;
    rx_right_data <= rx_right_int;

end Behavioral;