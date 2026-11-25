// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Nov 20 09:23:22 2026
// Host        : DESKTOP-825BANH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_system_ila_0_0_sim_netlist.v
// Design      : top_system_ila_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_0696
   (clk,
    SLOT_0_AXIS_tid,
    SLOT_0_AXIS_tdest,
    SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tstrb,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tuser,
    SLOT_0_AXIS_tvalid,
    SLOT_0_AXIS_tready,
    resetn);
  input clk;
  input SLOT_0_AXIS_tid;
  input SLOT_0_AXIS_tdest;
  input SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tstrb;
  input SLOT_0_AXIS_tkeep;
  input [0:0]SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tuser;
  input [0:0]SLOT_0_AXIS_tvalid;
  input [0:0]SLOT_0_AXIS_tready;
  input resetn;


endmodule

(* CHECK_LICENSE_TYPE = "top_system_ila_0_0,bd_0696,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "bd_0696,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    SLOT_0_AXIS_tid,
    SLOT_0_AXIS_tdest,
    SLOT_0_AXIS_tdata,
    SLOT_0_AXIS_tstrb,
    SLOT_0_AXIS_tkeep,
    SLOT_0_AXIS_tlast,
    SLOT_0_AXIS_tuser,
    SLOT_0_AXIS_tvalid,
    SLOT_0_AXIS_tready,
    resetn);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.clk CLK" *) (* x_interface_mode = "slave CLK.clk" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0696_clk, ASSOCIATED_BUSIF SLOT_0_AXIS, ASSOCIATED_RESET resetn, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TID" *) (* x_interface_mode = "monitor slave SLOT_0_AXIS" *) (* x_interface_parameter = "XIL_INTERFACENAME SLOT_0_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input SLOT_0_AXIS_tid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDEST" *) input SLOT_0_AXIS_tdest;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA" *) input SLOT_0_AXIS_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TSTRB" *) input SLOT_0_AXIS_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TKEEP" *) input SLOT_0_AXIS_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST" *) input [0:0]SLOT_0_AXIS_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TUSER" *) input SLOT_0_AXIS_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID" *) input [0:0]SLOT_0_AXIS_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY" *) input [0:0]SLOT_0_AXIS_tready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.resetn RST" *) (* x_interface_mode = "slave RST.resetn" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;

  wire SLOT_0_AXIS_tdata;
  wire SLOT_0_AXIS_tdest;
  wire SLOT_0_AXIS_tid;
  wire SLOT_0_AXIS_tkeep;
  wire [0:0]SLOT_0_AXIS_tlast;
  wire [0:0]SLOT_0_AXIS_tready;
  wire SLOT_0_AXIS_tstrb;
  wire SLOT_0_AXIS_tuser;
  wire [0:0]SLOT_0_AXIS_tvalid;
  wire clk;
  wire resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_0696 U0
       (.SLOT_0_AXIS_tdata(SLOT_0_AXIS_tdata),
        .SLOT_0_AXIS_tdest(SLOT_0_AXIS_tdest),
        .SLOT_0_AXIS_tid(SLOT_0_AXIS_tid),
        .SLOT_0_AXIS_tkeep(SLOT_0_AXIS_tkeep),
        .SLOT_0_AXIS_tlast(SLOT_0_AXIS_tlast),
        .SLOT_0_AXIS_tready(SLOT_0_AXIS_tready),
        .SLOT_0_AXIS_tstrb(SLOT_0_AXIS_tstrb),
        .SLOT_0_AXIS_tuser(SLOT_0_AXIS_tuser),
        .SLOT_0_AXIS_tvalid(SLOT_0_AXIS_tvalid),
        .clk(clk),
        .resetn(resetn));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
