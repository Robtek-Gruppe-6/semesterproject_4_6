// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:09:48 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Motor_handler_inst_3/ip/FPGA_Motor_handler_inst_3_dmux_1xn_0_0/FPGA_Motor_handler_inst_3_dmux_1xn_0_0_sim_netlist.v
// Design      : FPGA_Motor_handler_inst_3_dmux_1xn_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_Motor_handler_inst_3_dmux_1xn_0_0,dmux_1xn,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "dmux_1xn,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_Motor_handler_inst_3_dmux_1xn_0_0
   (clk,
    en,
    i,
    sel,
    rst,
    o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Main_task_clk, INSERT_VIP 0" *) input clk;
  input en;
  input i;
  input [0:0]sel;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [1:0]o;

  wire clk;
  wire en;
  wire i;
  wire [1:0]o;
  wire rst;
  wire [0:0]sel;

  FPGA_Motor_handler_inst_3_dmux_1xn_0_0_dmux_1xn U0
       (.clk(clk),
        .en(en),
        .i(i),
        .o(o),
        .rst(rst),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "dmux_1xn" *) 
module FPGA_Motor_handler_inst_3_dmux_1xn_0_0_dmux_1xn
   (o,
    i,
    sel,
    en,
    clk,
    rst);
  output [1:0]o;
  input i;
  input [0:0]sel;
  input en;
  input clk;
  input rst;

  wire clk;
  wire en;
  wire i;
  wire [1:0]o;
  wire \o_sig[0]_i_1_n_0 ;
  wire \o_sig[1]_i_1_n_0 ;
  wire rst;
  wire [0:0]sel;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_sig[0]_i_1 
       (.I0(i),
        .I1(sel),
        .O(\o_sig[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_sig[1]_i_1 
       (.I0(i),
        .I1(sel),
        .O(\o_sig[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \o_sig_reg[0] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\o_sig[0]_i_1_n_0 ),
        .Q(o[0]));
  FDCE #(
    .INIT(1'b0)) 
    \o_sig_reg[1] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\o_sig[1]_i_1_n_0 ),
        .Q(o[1]));
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
