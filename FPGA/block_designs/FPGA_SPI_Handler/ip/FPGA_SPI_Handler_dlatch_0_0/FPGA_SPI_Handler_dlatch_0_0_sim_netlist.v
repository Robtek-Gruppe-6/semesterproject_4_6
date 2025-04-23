// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr 23 11:13:02 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_dlatch_0_0/FPGA_SPI_Handler_dlatch_0_0_sim_netlist.v
// Design      : FPGA_SPI_Handler_dlatch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_SPI_Handler_dlatch_0_0,dlatch,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "dlatch,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_SPI_Handler_dlatch_0_0
   (clk,
    i,
    en,
    rst,
    o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_SPI_Handler_clk_0, INSERT_VIP 0" *) input clk;
  input [15:0]i;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [15:0]o;

  wire clk;
  wire en;
  wire [15:0]i;
  wire [15:0]o;
  wire rst;

  FPGA_SPI_Handler_dlatch_0_0_dlatch U0
       (.clk(clk),
        .en(en),
        .i(i),
        .o(o),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "dlatch" *) 
module FPGA_SPI_Handler_dlatch_0_0_dlatch
   (o,
    en,
    i,
    clk,
    rst);
  output [15:0]o;
  input en;
  input [15:0]i;
  input clk;
  input rst;

  wire clk;
  wire en;
  wire [15:0]i;
  wire [15:0]o;
  wire rst;

  FDCE \o_reg[0] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[0]),
        .Q(o[0]));
  FDCE \o_reg[10] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[10]),
        .Q(o[10]));
  FDCE \o_reg[11] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[11]),
        .Q(o[11]));
  FDCE \o_reg[12] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[12]),
        .Q(o[12]));
  FDCE \o_reg[13] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[13]),
        .Q(o[13]));
  FDCE \o_reg[14] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[14]),
        .Q(o[14]));
  FDCE \o_reg[15] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[15]),
        .Q(o[15]));
  FDCE \o_reg[1] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[1]),
        .Q(o[1]));
  FDCE \o_reg[2] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[2]),
        .Q(o[2]));
  FDCE \o_reg[3] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[3]),
        .Q(o[3]));
  FDCE \o_reg[4] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[4]),
        .Q(o[4]));
  FDCE \o_reg[5] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[5]),
        .Q(o[5]));
  FDCE \o_reg[6] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[6]),
        .Q(o[6]));
  FDCE \o_reg[7] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[7]),
        .Q(o[7]));
  FDCE \o_reg[8] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[8]),
        .Q(o[8]));
  FDCE \o_reg[9] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(i[9]),
        .Q(o[9]));
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
