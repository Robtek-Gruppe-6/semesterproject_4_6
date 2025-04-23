// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr 23 11:13:01 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_d_flip_flop_1_0/FPGA_SPI_Handler_d_flip_flop_1_0_sim_netlist.v
// Design      : FPGA_SPI_Handler_d_flip_flop_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_SPI_Handler_d_flip_flop_1_0,d_flip_flop,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "d_flip_flop,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_SPI_Handler_d_flip_flop_1_0
   (clk,
    D,
    Q,
    en,
    rst);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_SPI_Handler_clk_0, INSERT_VIP 0" *) input clk;
  input D;
  output Q;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire D;
  wire Q;
  wire clk;
  wire en;
  wire rst;

  FPGA_SPI_Handler_d_flip_flop_1_0_d_flip_flop U0
       (.D(D),
        .Q(Q),
        .clk(clk),
        .en(en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "d_flip_flop" *) 
module FPGA_SPI_Handler_d_flip_flop_1_0_d_flip_flop
   (Q,
    rst,
    en,
    D,
    clk);
  output Q;
  input rst;
  input en;
  input D;
  input clk;

  wire D;
  wire Q;
  wire Q_sig_i_1_n_0;
  wire clk;
  wire en;
  wire latch_i_1_n_0;
  wire latch_reg_n_0;
  wire rst;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    Q_reg
       (.CLR(1'b0),
        .D(1'b0),
        .G(rst),
        .GE(1'b1),
        .Q(Q));
  LUT5 #(
    .INIT(32'hFBFF0400)) 
    Q_sig_i_1
       (.I0(rst),
        .I1(en),
        .I2(latch_reg_n_0),
        .I3(D),
        .I4(Q),
        .O(Q_sig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Q_sig_reg
       (.C(clk),
        .CE(1'b1),
        .D(Q_sig_i_1_n_0),
        .Q(Q),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD8)) 
    latch_i_1
       (.I0(en),
        .I1(D),
        .I2(latch_reg_n_0),
        .O(latch_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    latch_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(latch_i_1_n_0),
        .Q(latch_reg_n_0));
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
