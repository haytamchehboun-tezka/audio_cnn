-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Nov 20 09:23:22 2026
-- Host        : DESKTOP-825BANH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_system_ila_0_0_sim_netlist.vhdl
-- Design      : top_system_ila_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    SLOT_0_AXIS_tid : in STD_LOGIC;
    SLOT_0_AXIS_tdest : in STD_LOGIC;
    SLOT_0_AXIS_tdata : in STD_LOGIC;
    SLOT_0_AXIS_tstrb : in STD_LOGIC;
    SLOT_0_AXIS_tkeep : in STD_LOGIC;
    SLOT_0_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tuser : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_system_ila_0_0,bd_0696,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0696,Vivado 2025.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_0696 is
  port (
    clk : in STD_LOGIC;
    SLOT_0_AXIS_tid : in STD_LOGIC;
    SLOT_0_AXIS_tdest : in STD_LOGIC;
    SLOT_0_AXIS_tdata : in STD_LOGIC;
    SLOT_0_AXIS_tstrb : in STD_LOGIC;
    SLOT_0_AXIS_tkeep : in STD_LOGIC;
    SLOT_0_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tuser : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_0696;
  attribute x_interface_info : string;
  attribute x_interface_info of SLOT_0_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  attribute x_interface_info of SLOT_0_AXIS_tdest : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDEST";
  attribute x_interface_info of SLOT_0_AXIS_tid : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TID";
  attribute x_interface_mode : string;
  attribute x_interface_mode of SLOT_0_AXIS_tid : signal is "monitor slave SLOT_0_AXIS";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of SLOT_0_AXIS_tid : signal is "XIL_INTERFACENAME SLOT_0_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of SLOT_0_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TKEEP";
  attribute x_interface_info of SLOT_0_AXIS_tstrb : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TSTRB";
  attribute x_interface_info of SLOT_0_AXIS_tuser : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TUSER";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 CLK.clk CLK";
  attribute x_interface_mode of clk : signal is "slave CLK.clk";
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME CLK.clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0696_clk, ASSOCIATED_BUSIF SLOT_0_AXIS, ASSOCIATED_RESET resetn, INSERT_VIP 0";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 RST.resetn RST";
  attribute x_interface_mode of resetn : signal is "slave RST.resetn";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of SLOT_0_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  attribute x_interface_info of SLOT_0_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  attribute x_interface_info of SLOT_0_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
begin
U0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_0696
     port map (
      SLOT_0_AXIS_tdata => SLOT_0_AXIS_tdata,
      SLOT_0_AXIS_tdest => SLOT_0_AXIS_tdest,
      SLOT_0_AXIS_tid => SLOT_0_AXIS_tid,
      SLOT_0_AXIS_tkeep => SLOT_0_AXIS_tkeep,
      SLOT_0_AXIS_tlast(0) => SLOT_0_AXIS_tlast(0),
      SLOT_0_AXIS_tready(0) => SLOT_0_AXIS_tready(0),
      SLOT_0_AXIS_tstrb => SLOT_0_AXIS_tstrb,
      SLOT_0_AXIS_tuser => SLOT_0_AXIS_tuser,
      SLOT_0_AXIS_tvalid(0) => SLOT_0_AXIS_tvalid(0),
      clk => clk,
      resetn => resetn
    );
end STRUCTURE;
