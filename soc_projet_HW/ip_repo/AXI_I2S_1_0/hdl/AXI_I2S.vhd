library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_I2S is
	generic (
		-- Users to add parameters here
        DATA_WIDTH : integer := 24;
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXIS
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_START_COUNT	: integer	:= 32;

		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here
        mclk          : in  std_logic; -- Horloge maître (ex: 12.288 MHz)
        bclk_out      : out std_logic;
        lrclk_out     : out std_logic;
        sdata_tx      : out std_logic; -- Sortie vers DAC
        sdata_rx      : in  std_logic;  -- Entrée depuis ADC
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end AXI_I2S;

architecture arch_imp of AXI_I2S is

	-- component declaration
	component AXI_I2S_master_stream_v1_0_M00_AXIS is
		generic (
		DATA_WIDTH : integer := 24;
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_START_COUNT	: integer	:= 32
		);
		port (
		
		rx_left_data  : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        rx_right_data : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        data_valid    : in  std_logic;
		
		M_AXIS_ACLK	: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TREADY	: in std_logic
		);
	end component AXI_I2S_master_stream_v1_0_M00_AXIS;

	component AXI_I2S_slave_stream_v1_0_S00_AXIS is
		generic (
		DATA_WIDTH : integer := 24;
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		
		tx_left_data  : out std_logic_vector(DATA_WIDTH-1 downto 0);
        tx_right_data : out std_logic_vector(DATA_WIDTH-1 downto 0);
        load_next     : in  std_logic;
		
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component AXI_I2S_slave_stream_v1_0_S00_AXIS;


   signal  tx_left_data : std_logic_vector(DATA_WIDTH-1 downto 0);
   signal tx_right_data : std_logic_vector(DATA_WIDTH-1 downto 0);
   signal load_next :     std_logic;-- Pulsé pour demander les échantillons suivants (TX)
    
    -- Canaux d'enregistrement (Record -> depuis ADC via sdata_rx)
    signal rx_left_data : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal rx_right_data : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal data_valid : std_logic;-- Pulsé à '1' quand une nouvelle paire RX est prête

    signal i2s_aresetn : std_logic;

	component AXI_I2S_slave_lite_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component AXI_I2S_slave_lite_v1_0_S00_AXI;

	component I2S_transceiver is
        Generic (
        DATA_WIDTH : integer := 24
    );
        Port (
        mclk          : in  std_logic; -- Horloge maître (ex: 12.288 MHz)
        resetn         : in  std_logic; -- Reset synchrone actif haut
        
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
    end component;

component CDC_Audio_Bridge is
        generic (
            DATA_WIDTH : integer := 24
        );
        port (
            mclk           : in std_logic;
            i2s_aresetn    : out std_logic;
            axi_aclk       : in  std_logic;
            axi_aresetn    : in  std_logic;
            i2s_rx_left    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
            i2s_rx_right   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
            i2s_data_valid : in  std_logic;
            i2s_tx_left    : out std_logic_vector(DATA_WIDTH-1 downto 0);
            i2s_tx_right   : out std_logic_vector(DATA_WIDTH-1 downto 0);
            i2s_load_next  : in  std_logic;
            axi_rx_left    : out std_logic_vector(DATA_WIDTH-1 downto 0);
            axi_rx_right   : out std_logic_vector(DATA_WIDTH-1 downto 0);
            axi_data_valid : out std_logic;
            axi_tx_left    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
            axi_tx_right   : in  std_logic_vector(DATA_WIDTH-1 downto 0);
            axi_load_next  : out std_logic
        );
    end component;

    -- Nouveaux signaux synchronisés côté AXI (100 MHz)
    signal axi_tx_left    : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal axi_tx_right   : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal axi_load_next  : std_logic;
    signal axi_rx_left    : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal axi_rx_right   : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal axi_data_valid : std_logic;


begin


-- Instantiation of IS2 transceiver
I2S_transceiver_inst : I2S_transceiver
    Generic map(
    DATA_WIDTH => 24
    )
    Port map(
    mclk        => mclk,
    resetn      => i2s_aresetn,
    
    -- Interface Parallèle (Côté PL / Votre logique)
    -- Canaux de lecture (Playback -> vers DAC via sdata_tx)
    tx_left_data   => tx_left_data,
    tx_right_data  => tx_right_data,
    load_next      => load_next,-- Pulsé pour demander les échantillons suivants (TX)
    
    -- Canaux d'enregistrement (Record -> depuis ADC via sdata_rx)
    rx_left_data   => rx_left_data,
    rx_right_data  => rx_right_data,
    data_valid     => data_valid,-- Pulsé à '1' quand une nouvelle paire RX est prête
    
    -- Interface I2S Physique (Vers le codec SSM2603)
    bclk_out      => bclk_out,
    lrclk_out     => lrclk_out,
    sdata_tx      => sdata_tx, -- Sortie vers DAC
    sdata_rx      => sdata_rx  -- Entrée depuis ADC
);

-- Instanciation du pont CDC entre l'I2S (12.288 MHz) et l'AXI (100 MHz)
CDC_Audio_Bridge_inst : CDC_Audio_Bridge
    generic map (
        DATA_WIDTH => DATA_WIDTH
    )
    port map (
    
        mclk => mclk,
        i2s_aresetn => i2s_aresetn,
    
        axi_aclk       => m00_axis_aclk,
        axi_aresetn    => m00_axis_aresetn,
        
        -- Raccordement côté I2S_transceiver
        i2s_rx_left    => rx_left_data,
        i2s_rx_right   => rx_right_data,
        i2s_data_valid => data_valid,
        i2s_tx_left    => tx_left_data,
        i2s_tx_right   => tx_right_data,
        i2s_load_next  => load_next,

        -- Raccordement côté M00_AXIS et S00_AXIS
        axi_rx_left    => axi_rx_left,
        axi_rx_right   => axi_rx_right,
        axi_data_valid => axi_data_valid,
        axi_tx_left    => axi_tx_left,
        axi_tx_right   => axi_tx_right,
        axi_load_next  => axi_load_next
    );

-- M00_AXIS reçoit maintenant les signaux synchronisés à 100 MHz
AXI_I2S_master_stream_v1_0_M00_AXIS_inst : AXI_I2S_master_stream_v1_0_M00_AXIS
    generic map (
        DATA_WIDTH           => DATA_WIDTH,
        C_M_AXIS_TDATA_WIDTH => C_M00_AXIS_TDATA_WIDTH,
        C_M_START_COUNT      => C_M00_AXIS_START_COUNT
    )
    port map (
        rx_left_data   => axi_rx_left,
        rx_right_data  => axi_rx_right,
        data_valid     => axi_data_valid,
        M_AXIS_ACLK    => m00_axis_aclk,
        M_AXIS_ARESETN => m00_axis_aresetn,
        M_AXIS_TVALID  => m00_axis_tvalid,
        M_AXIS_TDATA   => m00_axis_tdata,
        M_AXIS_TSTRB   => m00_axis_tstrb,
        M_AXIS_TLAST   => m00_axis_tlast,
        M_AXIS_TREADY  => m00_axis_tready
    );

-- S00_AXIS s'interface également avec les signaux synchronisés à 100 MHz
AXI_I2S_slave_stream_v1_0_S00_AXIS_inst : AXI_I2S_slave_stream_v1_0_S00_AXIS
    generic map (
        DATA_WIDTH           => DATA_WIDTH,
        C_S_AXIS_TDATA_WIDTH => C_S00_AXIS_TDATA_WIDTH
    )
    port map (
        tx_left_data   => axi_tx_left,
        tx_right_data  => axi_tx_right,
        load_next      => axi_load_next,
        S_AXIS_ACLK    => s00_axis_aclk,
        S_AXIS_ARESETN => s00_axis_aresetn,
        S_AXIS_TREADY  => s00_axis_tready,
        S_AXIS_TDATA   => s00_axis_tdata,
        S_AXIS_TSTRB   => s00_axis_tstrb,
        S_AXIS_TLAST   => s00_axis_tlast,
        S_AXIS_TVALID  => s00_axis_tvalid
    );

-- Instantiation of Axi Bus Interface S00_AXI
AXI_I2S_slave_lite_v1_0_S00_AXI_inst : AXI_I2S_slave_lite_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
