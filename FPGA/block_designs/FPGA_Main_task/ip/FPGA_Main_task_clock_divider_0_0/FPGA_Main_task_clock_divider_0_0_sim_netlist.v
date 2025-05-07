// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:54:13 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_clock_divider_0_0/FPGA_Main_task_clock_divider_0_0_sim_netlist.v
// Design      : FPGA_Main_task_clock_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_Main_task_clock_divider_0_0,clock_divider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "clock_divider,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_Main_task_clock_divider_0_0
   (clk,
    en,
    clk_out,
    rst);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Main_task_clk, INSERT_VIP 0" *) input clk;
  input en;
  output clk_out;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire clk;
  wire clk_out;
  wire en;
  wire rst;

  FPGA_Main_task_clock_divider_0_0_clock_divider U0
       (.clk(clk),
        .clk_out(clk_out),
        .en(en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module FPGA_Main_task_clock_divider_0_0_clock_divider
   (clk_out,
    en,
    clk,
    rst);
  output clk_out;
  input en;
  input clk;
  input rst;

  wire clk;
  wire clk_out;
  wire clk_out_i_2_n_0;
  wire [6:0]cnt;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[5]_i_2_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire en;
  wire p_0_in;
  wire [6:1]plusOp;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire rst;
  wire [3:1]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDDDDEEDF)) 
    clk_out_i_1
       (.I0(plusOp[6]),
        .I1(plusOp_carry__0_n_1),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(plusOp[1]),
        .I4(clk_out_i_2_n_0),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h7FFF)) 
    clk_out_i_2
       (.I0(plusOp[3]),
        .I1(plusOp[2]),
        .I2(plusOp[5]),
        .I3(plusOp[4]),
        .O(clk_out_i_2_n_0));
  FDCE clk_out_reg
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(p_0_in),
        .Q(clk_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0045)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(clk_out_i_2_n_0),
        .I2(plusOp[6]),
        .I3(plusOp_carry__0_n_1),
        .O(cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \cnt[1]_i_1 
       (.I0(plusOp[1]),
        .I1(clk_out_i_2_n_0),
        .I2(plusOp[6]),
        .I3(plusOp_carry__0_n_1),
        .O(cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \cnt[2]_i_1 
       (.I0(plusOp[2]),
        .I1(\cnt[3]_i_2_n_0 ),
        .I2(plusOp[3]),
        .I3(plusOp_carry__0_n_1),
        .O(cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \cnt[3]_i_1 
       (.I0(plusOp[3]),
        .I1(\cnt[3]_i_2_n_0 ),
        .I2(plusOp[2]),
        .I3(plusOp_carry__0_n_1),
        .O(cnt[3]));
  LUT5 #(
    .INIT(32'h5DFFFFFF)) 
    \cnt[3]_i_2 
       (.I0(plusOp[6]),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(plusOp[1]),
        .I3(plusOp[5]),
        .I4(plusOp[4]),
        .O(\cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \cnt[4]_i_1 
       (.I0(plusOp[4]),
        .I1(\cnt[5]_i_2_n_0 ),
        .I2(plusOp[5]),
        .I3(plusOp_carry__0_n_1),
        .O(cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \cnt[5]_i_1 
       (.I0(plusOp[5]),
        .I1(\cnt[5]_i_2_n_0 ),
        .I2(plusOp[4]),
        .I3(plusOp_carry__0_n_1),
        .O(cnt[5]));
  LUT5 #(
    .INIT(32'h5DFFFFFF)) 
    \cnt[5]_i_2 
       (.I0(plusOp[6]),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(plusOp[1]),
        .I3(plusOp[3]),
        .I4(plusOp[2]),
        .O(\cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000AA20)) 
    \cnt[6]_i_1 
       (.I0(plusOp[6]),
        .I1(plusOp[1]),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(clk_out_i_2_n_0),
        .I4(plusOp_carry__0_n_1),
        .O(cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(cnt[0]),
        .Q(\cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[3],plusOp_carry__0_n_1,NLW_plusOp_carry__0_CO_UNCONNECTED[1],plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[3:2],plusOp[6:5]}),
        .S({1'b0,1'b1,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
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
