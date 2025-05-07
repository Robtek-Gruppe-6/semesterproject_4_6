// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:09:48 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_busmux_2x1_0_0/FPGA_Main_task_busmux_2x1_0_0_sim_netlist.v
// Design      : FPGA_Main_task_busmux_2x1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_Main_task_busmux_2x1_0_0,busmux_2x1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "busmux_2x1,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_Main_task_busmux_2x1_0_0
   (input_1,
    input_2,
    s,
    o);
  input [10:0]input_1;
  input [10:0]input_2;
  input s;
  output [10:0]o;

  wire [10:0]input_1;
  wire [10:0]input_2;
  wire [10:0]o;
  wire s;

  FPGA_Main_task_busmux_2x1_0_0_busmux_2x1 U0
       (.input_1(input_1),
        .input_2(input_2),
        .o(o),
        .s(s));
endmodule

(* ORIG_REF_NAME = "busmux_2x1" *) 
module FPGA_Main_task_busmux_2x1_0_0_busmux_2x1
   (o,
    input_2,
    input_1,
    s);
  output [10:0]o;
  input [10:0]input_2;
  input [10:0]input_1;
  input s;

  wire [10:0]input_1;
  wire [10:0]input_2;
  wire [10:0]o;
  wire s;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o[0]_INST_0 
       (.I0(input_2[0]),
        .I1(input_1[0]),
        .I2(s),
        .O(o[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[10]_INST_0 
       (.I0(input_2[10]),
        .I1(input_1[10]),
        .I2(s),
        .O(o[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o[1]_INST_0 
       (.I0(input_2[1]),
        .I1(input_1[1]),
        .I2(s),
        .O(o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o[2]_INST_0 
       (.I0(input_2[2]),
        .I1(input_1[2]),
        .I2(s),
        .O(o[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o[3]_INST_0 
       (.I0(input_2[3]),
        .I1(input_1[3]),
        .I2(s),
        .O(o[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o[4]_INST_0 
       (.I0(input_2[4]),
        .I1(input_1[4]),
        .I2(s),
        .O(o[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o[5]_INST_0 
       (.I0(input_2[5]),
        .I1(input_1[5]),
        .I2(s),
        .O(o[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o[6]_INST_0 
       (.I0(input_2[6]),
        .I1(input_1[6]),
        .I2(s),
        .O(o[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o[7]_INST_0 
       (.I0(input_2[7]),
        .I1(input_1[7]),
        .I2(s),
        .O(o[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o[8]_INST_0 
       (.I0(input_2[8]),
        .I1(input_1[8]),
        .I2(s),
        .O(o[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o[9]_INST_0 
       (.I0(input_2[9]),
        .I1(input_1[9]),
        .I2(s),
        .O(o[9]));
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
