// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:09:49 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Motor_handler_inst_3/ip/FPGA_Motor_handler_inst_3_pwm_block_0/FPGA_Motor_handler_inst_3_pwm_block_0_sim_netlist.v
// Design      : FPGA_Motor_handler_inst_3_pwm_block_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_Motor_handler_inst_3_pwm_block_0,pwm_block,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pwm_block,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_Motor_handler_inst_3_pwm_block_0
   (clk,
    en,
    duty_cycle,
    rst,
    pwm);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Main_task_clk, INSERT_VIP 0" *) input clk;
  input en;
  input [9:0]duty_cycle;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output pwm;

  wire clk;
  wire [9:0]duty_cycle;
  wire en;
  wire pwm;
  wire rst;

  FPGA_Motor_handler_inst_3_pwm_block_0_pwm_block U0
       (.clk(clk),
        .duty_cycle(duty_cycle),
        .en(en),
        .pwm(pwm),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "pwm_block" *) 
module FPGA_Motor_handler_inst_3_pwm_block_0_pwm_block
   (pwm,
    en,
    clk,
    rst,
    duty_cycle);
  output pwm;
  input en;
  input clk;
  input rst;
  input [9:0]duty_cycle;

  wire clk;
  wire \cnt_sig[0]_i_1_n_0 ;
  wire \cnt_sig[9]_i_2_n_0 ;
  wire [9:0]cnt_sig_reg;
  wire done_sig;
  wire done_sig__0;
  wire done_sig_reg_i_2_n_0;
  wire done_sig_reg_i_3_n_0;
  wire [9:0]duty_cycle;
  wire en;
  wire [9:1]plusOp;
  wire pwm;
  wire pwm_sig0_carry__0_n_3;
  wire pwm_sig0_carry_i_1__0_n_0;
  wire pwm_sig0_carry_i_1_n_0;
  wire pwm_sig0_carry_i_2__0_n_0;
  wire pwm_sig0_carry_i_2_n_0;
  wire pwm_sig0_carry_i_3_n_0;
  wire pwm_sig0_carry_i_4_n_0;
  wire pwm_sig0_carry_i_5_n_0;
  wire pwm_sig0_carry_i_6_n_0;
  wire pwm_sig0_carry_i_7_n_0;
  wire pwm_sig0_carry_i_8_n_0;
  wire pwm_sig0_carry_n_0;
  wire pwm_sig0_carry_n_1;
  wire pwm_sig0_carry_n_2;
  wire pwm_sig0_carry_n_3;
  wire rst;
  wire [3:0]NLW_pwm_sig0_carry_O_UNCONNECTED;
  wire [3:1]NLW_pwm_sig0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pwm_sig0_carry__0_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[0]_i_1 
       (.I0(cnt_sig_reg[0]),
        .O(\cnt_sig[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_sig[1]_i_1 
       (.I0(cnt_sig_reg[0]),
        .I1(cnt_sig_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_sig[2]_i_1 
       (.I0(cnt_sig_reg[0]),
        .I1(cnt_sig_reg[1]),
        .I2(cnt_sig_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_sig[3]_i_1 
       (.I0(cnt_sig_reg[1]),
        .I1(cnt_sig_reg[0]),
        .I2(cnt_sig_reg[2]),
        .I3(cnt_sig_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_sig[4]_i_1 
       (.I0(cnt_sig_reg[2]),
        .I1(cnt_sig_reg[0]),
        .I2(cnt_sig_reg[1]),
        .I3(cnt_sig_reg[3]),
        .I4(cnt_sig_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_sig[5]_i_1 
       (.I0(cnt_sig_reg[3]),
        .I1(cnt_sig_reg[1]),
        .I2(cnt_sig_reg[0]),
        .I3(cnt_sig_reg[2]),
        .I4(cnt_sig_reg[4]),
        .I5(cnt_sig_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_sig[6]_i_1 
       (.I0(\cnt_sig[9]_i_2_n_0 ),
        .I1(cnt_sig_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_sig[7]_i_1 
       (.I0(\cnt_sig[9]_i_2_n_0 ),
        .I1(cnt_sig_reg[6]),
        .I2(cnt_sig_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_sig[8]_i_1 
       (.I0(cnt_sig_reg[6]),
        .I1(\cnt_sig[9]_i_2_n_0 ),
        .I2(cnt_sig_reg[7]),
        .I3(cnt_sig_reg[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_sig[9]_i_1 
       (.I0(cnt_sig_reg[7]),
        .I1(\cnt_sig[9]_i_2_n_0 ),
        .I2(cnt_sig_reg[6]),
        .I3(cnt_sig_reg[8]),
        .I4(cnt_sig_reg[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt_sig[9]_i_2 
       (.I0(cnt_sig_reg[5]),
        .I1(cnt_sig_reg[3]),
        .I2(cnt_sig_reg[1]),
        .I3(cnt_sig_reg[0]),
        .I4(cnt_sig_reg[2]),
        .I5(cnt_sig_reg[4]),
        .O(\cnt_sig[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[0] 
       (.C(clk),
        .CE(en),
        .CLR(done_sig_reg_i_2_n_0),
        .D(\cnt_sig[0]_i_1_n_0 ),
        .Q(cnt_sig_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[1] 
       (.C(clk),
        .CE(en),
        .CLR(done_sig_reg_i_2_n_0),
        .D(plusOp[1]),
        .Q(cnt_sig_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[2] 
       (.C(clk),
        .CE(en),
        .CLR(done_sig_reg_i_2_n_0),
        .D(plusOp[2]),
        .Q(cnt_sig_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[3] 
       (.C(clk),
        .CE(en),
        .CLR(done_sig_reg_i_2_n_0),
        .D(plusOp[3]),
        .Q(cnt_sig_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[4] 
       (.C(clk),
        .CE(en),
        .CLR(done_sig_reg_i_2_n_0),
        .D(plusOp[4]),
        .Q(cnt_sig_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[5] 
       (.C(clk),
        .CE(en),
        .CLR(done_sig_reg_i_2_n_0),
        .D(plusOp[5]),
        .Q(cnt_sig_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[6] 
       (.C(clk),
        .CE(en),
        .CLR(done_sig_reg_i_2_n_0),
        .D(plusOp[6]),
        .Q(cnt_sig_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[7] 
       (.C(clk),
        .CE(en),
        .CLR(done_sig_reg_i_2_n_0),
        .D(plusOp[7]),
        .Q(cnt_sig_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[8] 
       (.C(clk),
        .CE(en),
        .CLR(done_sig_reg_i_2_n_0),
        .D(plusOp[8]),
        .Q(cnt_sig_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[9] 
       (.C(clk),
        .CE(en),
        .CLR(done_sig_reg_i_2_n_0),
        .D(plusOp[9]),
        .Q(cnt_sig_reg[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_sig_reg
       (.CLR(done_sig_reg_i_2_n_0),
        .D(1'b1),
        .G(done_sig__0),
        .GE(1'b1),
        .Q(done_sig));
  LUT5 #(
    .INIT(32'h80000000)) 
    done_sig_reg_i_1
       (.I0(cnt_sig_reg[9]),
        .I1(cnt_sig_reg[7]),
        .I2(cnt_sig_reg[8]),
        .I3(cnt_sig_reg[6]),
        .I4(done_sig_reg_i_3_n_0),
        .O(done_sig__0));
  LUT2 #(
    .INIT(4'hE)) 
    done_sig_reg_i_2
       (.I0(rst),
        .I1(done_sig),
        .O(done_sig_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    done_sig_reg_i_3
       (.I0(cnt_sig_reg[0]),
        .I1(cnt_sig_reg[1]),
        .I2(cnt_sig_reg[2]),
        .I3(cnt_sig_reg[3]),
        .I4(cnt_sig_reg[5]),
        .I5(cnt_sig_reg[4]),
        .O(done_sig_reg_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    pwm_INST_0
       (.I0(pwm_sig0_carry__0_n_3),
        .I1(done_sig),
        .I2(rst),
        .O(pwm));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_sig0_carry
       (.CI(1'b0),
        .CO({pwm_sig0_carry_n_0,pwm_sig0_carry_n_1,pwm_sig0_carry_n_2,pwm_sig0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_sig0_carry_i_1_n_0,pwm_sig0_carry_i_2_n_0,pwm_sig0_carry_i_3_n_0,pwm_sig0_carry_i_4_n_0}),
        .O(NLW_pwm_sig0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_sig0_carry_i_5_n_0,pwm_sig0_carry_i_6_n_0,pwm_sig0_carry_i_7_n_0,pwm_sig0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_sig0_carry__0
       (.CI(pwm_sig0_carry_n_0),
        .CO({NLW_pwm_sig0_carry__0_CO_UNCONNECTED[3:1],pwm_sig0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pwm_sig0_carry_i_1__0_n_0}),
        .O(NLW_pwm_sig0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,pwm_sig0_carry_i_2__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_sig0_carry_i_1
       (.I0(duty_cycle[6]),
        .I1(cnt_sig_reg[6]),
        .I2(cnt_sig_reg[7]),
        .I3(duty_cycle[7]),
        .O(pwm_sig0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_sig0_carry_i_1__0
       (.I0(duty_cycle[8]),
        .I1(cnt_sig_reg[8]),
        .I2(cnt_sig_reg[9]),
        .I3(duty_cycle[9]),
        .O(pwm_sig0_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_sig0_carry_i_2
       (.I0(duty_cycle[4]),
        .I1(cnt_sig_reg[4]),
        .I2(cnt_sig_reg[5]),
        .I3(duty_cycle[5]),
        .O(pwm_sig0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_sig0_carry_i_2__0
       (.I0(duty_cycle[8]),
        .I1(cnt_sig_reg[8]),
        .I2(duty_cycle[9]),
        .I3(cnt_sig_reg[9]),
        .O(pwm_sig0_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_sig0_carry_i_3
       (.I0(duty_cycle[2]),
        .I1(cnt_sig_reg[2]),
        .I2(cnt_sig_reg[3]),
        .I3(duty_cycle[3]),
        .O(pwm_sig0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pwm_sig0_carry_i_4
       (.I0(duty_cycle[0]),
        .I1(cnt_sig_reg[0]),
        .I2(cnt_sig_reg[1]),
        .I3(duty_cycle[1]),
        .O(pwm_sig0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_sig0_carry_i_5
       (.I0(duty_cycle[6]),
        .I1(cnt_sig_reg[6]),
        .I2(duty_cycle[7]),
        .I3(cnt_sig_reg[7]),
        .O(pwm_sig0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_sig0_carry_i_6
       (.I0(duty_cycle[4]),
        .I1(cnt_sig_reg[4]),
        .I2(duty_cycle[5]),
        .I3(cnt_sig_reg[5]),
        .O(pwm_sig0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_sig0_carry_i_7
       (.I0(duty_cycle[2]),
        .I1(cnt_sig_reg[2]),
        .I2(duty_cycle[3]),
        .I3(cnt_sig_reg[3]),
        .O(pwm_sig0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_sig0_carry_i_8
       (.I0(duty_cycle[0]),
        .I1(cnt_sig_reg[0]),
        .I2(duty_cycle[1]),
        .I3(cnt_sig_reg[1]),
        .O(pwm_sig0_carry_i_8_n_0));
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
