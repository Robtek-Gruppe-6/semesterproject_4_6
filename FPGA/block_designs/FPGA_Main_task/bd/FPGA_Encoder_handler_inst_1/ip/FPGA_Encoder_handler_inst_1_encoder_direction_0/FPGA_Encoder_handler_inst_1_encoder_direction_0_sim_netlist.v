// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:08:21 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Encoder_handler_inst_1/ip/FPGA_Encoder_handler_inst_1_encoder_direction_0/FPGA_Encoder_handler_inst_1_encoder_direction_0_sim_netlist.v
// Design      : FPGA_Encoder_handler_inst_1_encoder_direction_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_Encoder_handler_inst_1_encoder_direction_0,encoder_direction,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "encoder_direction,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_Encoder_handler_inst_1_encoder_direction_0
   (clk,
    en,
    a,
    b,
    rst,
    pulse,
    dir);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Encoder_handler_clk, INSERT_VIP 0" *) input clk;
  input en;
  input a;
  input b;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output pulse;
  output dir;

  wire a;
  wire b;
  wire clk;
  wire dir;
  wire en;
  wire pulse;
  wire rst;

  FPGA_Encoder_handler_inst_1_encoder_direction_0_encoder_direction U0
       (.a(a),
        .b(b),
        .clk(clk),
        .dir(dir),
        .en(en),
        .pulse(pulse),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "encoder_direction" *) 
module FPGA_Encoder_handler_inst_1_encoder_direction_0_encoder_direction
   (pulse,
    dir,
    a,
    en,
    clk,
    b,
    rst);
  output pulse;
  output dir;
  input a;
  input en;
  input clk;
  input b;
  input rst;

  wire a;
  wire b;
  wire clk;
  wire dir;
  wire dir_i_1_n_0;
  wire en;
  wire latch_a;
  wire latch_a_i_1_n_0;
  wire latch_a_i_2_n_0;
  wire latch_b;
  wire latch_b_i_1_n_0;
  wire latch_b_i_2_n_0;
  wire pulse;
  wire pulse_sig_i_1_n_0;
  wire rst;

  LUT6 #(
    .INIT(64'hFF77FFFF08000000)) 
    dir_i_1
       (.I0(en),
        .I1(a),
        .I2(latch_b),
        .I3(latch_a),
        .I4(b),
        .I5(dir),
        .O(dir_i_1_n_0));
  FDCE dir_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(dir_i_1_n_0),
        .Q(dir));
  LUT4 #(
    .INIT(16'hFF20)) 
    latch_a_i_1
       (.I0(en),
        .I1(latch_b),
        .I2(a),
        .I3(latch_a),
        .O(latch_a_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    latch_a_i_2
       (.I0(a),
        .O(latch_a_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    latch_a_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(latch_a_i_2_n_0),
        .D(latch_a_i_1_n_0),
        .Q(latch_a));
  LUT4 #(
    .INIT(16'hFF20)) 
    latch_b_i_1
       (.I0(en),
        .I1(latch_a),
        .I2(b),
        .I3(latch_b),
        .O(latch_b_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    latch_b_i_2
       (.I0(b),
        .O(latch_b_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    latch_b_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(latch_b_i_2_n_0),
        .D(latch_b_i_1_n_0),
        .Q(latch_b));
  LUT6 #(
    .INIT(64'h4E44EE4444444444)) 
    pulse_sig_i_1
       (.I0(en),
        .I1(pulse),
        .I2(latch_b),
        .I3(a),
        .I4(latch_a),
        .I5(b),
        .O(pulse_sig_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pulse_sig_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(pulse_sig_i_1_n_0),
        .Q(pulse));
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
