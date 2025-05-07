// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:09:49 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Motor_handler_inst_0/ip/FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0/FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0_sim_netlist.v
// Design      : FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0,signed_to_absolute_integer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "signed_to_absolute_integer,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0
   (clk,
    en,
    val,
    a_val,
    o_sign,
    rst);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Main_task_clk, INSERT_VIP 0" *) input clk;
  input en;
  input [10:0]val;
  output [9:0]a_val;
  output o_sign;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire [9:0]a_val;
  wire clk;
  wire en;
  wire o_sign;
  wire rst;
  wire [10:0]val;

  FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0_signed_to_absolute_integer U0
       (.a_val(a_val),
        .clk(clk),
        .en(en),
        .o_sign(o_sign),
        .rst(rst),
        .val(val));
endmodule

(* ORIG_REF_NAME = "signed_to_absolute_integer" *) 
module FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0_signed_to_absolute_integer
   (a_val,
    o_sign,
    en,
    clk,
    rst,
    val);
  output [9:0]a_val;
  output o_sign;
  input en;
  input clk;
  input rst;
  input [10:0]val;

  wire [9:0]a_val;
  wire \a_val_sig[5]_i_2_n_0 ;
  wire \a_val_sig[9]_i_2_n_0 ;
  wire clk;
  wire en;
  wire o_sign;
  wire [9:1]p_0_in;
  wire rst;
  wire [10:0]val;

  LUT3 #(
    .INIT(8'h78)) 
    \a_val_sig[1]_i_1 
       (.I0(val[10]),
        .I1(val[0]),
        .I2(val[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    \a_val_sig[2]_i_1 
       (.I0(val[10]),
        .I1(val[0]),
        .I2(val[1]),
        .I3(val[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5557AAA8)) 
    \a_val_sig[3]_i_1 
       (.I0(val[10]),
        .I1(val[1]),
        .I2(val[0]),
        .I3(val[2]),
        .I4(val[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h55555557AAAAAAA8)) 
    \a_val_sig[4]_i_1 
       (.I0(val[10]),
        .I1(val[2]),
        .I2(val[0]),
        .I3(val[1]),
        .I4(val[3]),
        .I5(val[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \a_val_sig[5]_i_1 
       (.I0(val[10]),
        .I1(\a_val_sig[5]_i_2_n_0 ),
        .I2(val[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \a_val_sig[5]_i_2 
       (.I0(val[3]),
        .I1(val[1]),
        .I2(val[0]),
        .I3(val[2]),
        .I4(val[4]),
        .O(\a_val_sig[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \a_val_sig[6]_i_1 
       (.I0(val[10]),
        .I1(\a_val_sig[9]_i_2_n_0 ),
        .I2(val[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h57A8)) 
    \a_val_sig[7]_i_1 
       (.I0(val[10]),
        .I1(\a_val_sig[9]_i_2_n_0 ),
        .I2(val[6]),
        .I3(val[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h5557AAA8)) 
    \a_val_sig[8]_i_1 
       (.I0(val[10]),
        .I1(val[6]),
        .I2(\a_val_sig[9]_i_2_n_0 ),
        .I3(val[7]),
        .I4(val[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h00FFFF0001FEFF00)) 
    \a_val_sig[9]_i_1 
       (.I0(val[6]),
        .I1(\a_val_sig[9]_i_2_n_0 ),
        .I2(val[7]),
        .I3(val[9]),
        .I4(val[10]),
        .I5(val[8]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \a_val_sig[9]_i_2 
       (.I0(val[4]),
        .I1(val[2]),
        .I2(val[0]),
        .I3(val[1]),
        .I4(val[3]),
        .I5(val[5]),
        .O(\a_val_sig[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \a_val_sig_reg[0] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(val[0]),
        .Q(a_val[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_val_sig_reg[1] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(a_val[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_val_sig_reg[2] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(a_val[2]));
  FDCE #(
    .INIT(1'b0)) 
    \a_val_sig_reg[3] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(a_val[3]));
  FDCE #(
    .INIT(1'b0)) 
    \a_val_sig_reg[4] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(a_val[4]));
  FDCE #(
    .INIT(1'b0)) 
    \a_val_sig_reg[5] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(p_0_in[5]),
        .Q(a_val[5]));
  FDCE #(
    .INIT(1'b0)) 
    \a_val_sig_reg[6] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(p_0_in[6]),
        .Q(a_val[6]));
  FDCE #(
    .INIT(1'b0)) 
    \a_val_sig_reg[7] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(p_0_in[7]),
        .Q(a_val[7]));
  FDCE #(
    .INIT(1'b0)) 
    \a_val_sig_reg[8] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(p_0_in[8]),
        .Q(a_val[8]));
  FDCE #(
    .INIT(1'b0)) 
    \a_val_sig_reg[9] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(p_0_in[9]),
        .Q(a_val[9]));
  FDCE #(
    .INIT(1'b0)) 
    o_sign_sig_reg
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(val[10]),
        .Q(o_sign));
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
