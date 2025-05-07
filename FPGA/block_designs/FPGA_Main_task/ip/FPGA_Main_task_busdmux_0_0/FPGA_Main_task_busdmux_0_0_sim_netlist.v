// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:08:22 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_busdmux_0_0/FPGA_Main_task_busdmux_0_0_sim_netlist.v
// Design      : FPGA_Main_task_busdmux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_Main_task_busdmux_0_0,busdmux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "busdmux,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_Main_task_busdmux_0_0
   (data_in,
    sel,
    data_out_1,
    data_out_2);
  input [10:0]data_in;
  input [0:0]sel;
  output [10:0]data_out_1;
  output [10:0]data_out_2;

  wire [10:0]data_in;
  wire [10:0]data_out_1;
  wire [10:0]data_out_2;
  wire [0:0]sel;

  FPGA_Main_task_busdmux_0_0_busdmux U0
       (.data_in(data_in),
        .data_out_1(data_out_1),
        .data_out_2(data_out_2),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "busdmux" *) 
module FPGA_Main_task_busdmux_0_0_busdmux
   (data_out_1,
    data_out_2,
    data_in,
    sel);
  output [10:0]data_out_1;
  output [10:0]data_out_2;
  input [10:0]data_in;
  input [0:0]sel;

  wire [10:0]data_in;
  wire [10:0]data_out_1;
  wire [10:0]data_out_2;
  wire [0:0]sel;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[0] 
       (.CLR(1'b0),
        .D(data_in[0]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[10] 
       (.CLR(1'b0),
        .D(data_in[10]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[10]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[1] 
       (.CLR(1'b0),
        .D(data_in[1]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[1]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[2] 
       (.CLR(1'b0),
        .D(data_in[2]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[2]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[3] 
       (.CLR(1'b0),
        .D(data_in[3]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[3]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[4] 
       (.CLR(1'b0),
        .D(data_in[4]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[4]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[5] 
       (.CLR(1'b0),
        .D(data_in[5]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[5]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[6] 
       (.CLR(1'b0),
        .D(data_in[6]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[6]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[7] 
       (.CLR(1'b0),
        .D(data_in[7]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[7]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[8] 
       (.CLR(1'b0),
        .D(data_in[8]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[8]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \data_out_1_reg[9] 
       (.CLR(1'b0),
        .D(data_in[9]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_1[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[0] 
       (.CLR(1'b0),
        .D(data_in[0]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[10] 
       (.CLR(1'b0),
        .D(data_in[10]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[1] 
       (.CLR(1'b0),
        .D(data_in[1]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[2] 
       (.CLR(1'b0),
        .D(data_in[2]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[3] 
       (.CLR(1'b0),
        .D(data_in[3]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[4] 
       (.CLR(1'b0),
        .D(data_in[4]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[5] 
       (.CLR(1'b0),
        .D(data_in[5]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[6] 
       (.CLR(1'b0),
        .D(data_in[6]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[7] 
       (.CLR(1'b0),
        .D(data_in[7]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[8] 
       (.CLR(1'b0),
        .D(data_in[8]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_out_2_reg[9] 
       (.CLR(1'b0),
        .D(data_in[9]),
        .G(sel),
        .GE(1'b1),
        .Q(data_out_2[9]));
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
