----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2026 09:31:36
-- Design Name: 
-- Module Name: CDC_audio_bridge - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CDC_Audio_Bridge is
    generic (
        DATA_WIDTH : integer := 24
    );
    port (
        -- Domaine AXI (100 MHz)
        axi_aclk       : in  std_logic;
        axi_aresetn    : in  std_logic;

        -- Domaine Audio I2S (12.288 MHz)
        mclk           : in  std_logic; -- Nouvelle entrée d'horloge
        i2s_aresetn    : out std_logic; -- Nouveau reset synchronisé sur mclk

        -- Côté Transceiver I2S (12.288 MHz)
        i2s_rx_left    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        i2s_rx_right   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        i2s_data_valid : in  std_logic;
        i2s_tx_left    : out std_logic_vector(DATA_WIDTH-1 downto 0);
        i2s_tx_right   : out std_logic_vector(DATA_WIDTH-1 downto 0);
        i2s_load_next  : in  std_logic;

        -- Côté Interfaces AXI-Stream (100 MHz)
        axi_rx_left    : out std_logic_vector(DATA_WIDTH-1 downto 0);
        axi_rx_right   : out std_logic_vector(DATA_WIDTH-1 downto 0);
        axi_data_valid : out std_logic;
        axi_tx_left    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        axi_tx_right   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        axi_load_next  : out std_logic
    );
end CDC_Audio_Bridge;

architecture rtl of CDC_Audio_Bridge is

    -- Registres à décalage (3 bascules : 2 pour la synchro + 1 pour le front montant)
    signal valid_sync_reg : std_logic_vector(2 downto 0) := (others => '0');
    signal load_sync_reg  : std_logic_vector(2 downto 0) := (others => '0');

    -- Directives de placement physique pour Vivado (évite les erreurs de timing CDC)
    attribute ASYNC_REG : string;
    attribute ASYNC_REG of valid_sync_reg : signal is "TRUE";
    attribute ASYNC_REG of load_sync_reg  : signal is "TRUE";

    -- Impulsions synchrones d'un cycle à 100 MHz
    signal valid_rising_100m : std_logic;
    signal load_rising_100m  : std_logic;

    -- Registre de synchronisation du reset sur mclk (2 bascules)
    signal rst_sync_reg : std_logic_vector(1 downto 0) := (others => '0');
    attribute ASYNC_REG of rst_sync_reg : signal is "TRUE";

begin

    -- Synchroniseur de reset : mise à zéro asynchrone, relâchement synchrone sur mclk
    process(mclk, axi_aresetn)
    begin
        if axi_aresetn = '0' then
            rst_sync_reg <= (others => '0');
        elsif rising_edge(mclk) then
            rst_sync_reg <= rst_sync_reg(0) & '1';
        end if;
    end process;

    i2s_aresetn <= rst_sync_reg(1);

    -- 1. Chaîne de synchronisation des signaux de contrôle sur l'horloge AXI (100 MHz)
    process(axi_aclk)
    begin
        if rising_edge(axi_aclk) then
            if axi_aresetn = '0' then
                valid_sync_reg <= (others => '0');
                load_sync_reg  <= (others => '0');
            else
                valid_sync_reg <= valid_sync_reg(1 downto 0) & i2s_data_valid;
                load_sync_reg  <= load_sync_reg(1 downto 0)  & i2s_load_next;
            end if;
        end if;
    end process;

    -- Détection de front montant (bit 1 = '1' et bit 2 = '0')
    valid_rising_100m <= '1' when (valid_sync_reg(2 downto 1) = "01") else '0';
    load_rising_100m  <= '1' when (load_sync_reg(2 downto 1)  = "01") else '0';

    -- 2. Capture et maintien des données audio (Data Hold / Clock Enable)
    process(axi_aclk)
    begin
        if rising_edge(axi_aclk) then
            if axi_aresetn = '0' then
                axi_rx_left    <= (others => '0');
                axi_rx_right   <= (others => '0');
                axi_data_valid <= '0';
                
                i2s_tx_left    <= (others => '0');
                i2s_tx_right   <= (others => '0');
                axi_load_next  <= '0';
            else
                -- Chemin Record (12.288 MHz -> 100 MHz)
                -- On génère le pulse et on fige les échantillons simultanément pour M00_AXIS
                axi_data_valid <= valid_rising_100m;
                if valid_rising_100m = '1' then
                    axi_rx_left  <= i2s_rx_left;
                    axi_rx_right <= i2s_rx_right;
                end if;

                -- Chemin Playback (100 MHz -> 12.288 MHz)
                -- Dès que l'I2S demande la suite, on présente les échantillons du S00_AXIS
                -- et on renvoie le pulse à S00_AXIS pour qu'il prépare la paire suivante
                axi_load_next <= load_rising_100m;
                if load_rising_100m = '1' then
                    i2s_tx_left  <= axi_tx_left;
                    i2s_tx_right <= axi_tx_right;
                end if;
            end if;
        end if;
    end process;

end rtl;
