// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 17:28:49 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_manuel_mode_block_0_0/FPGA_Main_task_manuel_mode_block_0_0_sim_netlist.v
// Design      : FPGA_Main_task_manuel_mode_block_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_Main_task_manuel_mode_block_0_0,manuel_mode_block,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "manuel_mode_block,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_Main_task_manuel_mode_block_0_0
   (clk,
    en,
    btn,
    rst,
    motor1,
    motor2);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input en;
  input [3:0]btn;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [10:0]motor1;
  output [10:0]motor2;

  wire \<const0> ;
  wire [3:0]btn;
  wire clk;
  wire en;
  wire [10:4]\^motor1 ;
  wire [10:4]\^motor2 ;
  wire rst;

  assign motor1[10] = \^motor1 [10];
  assign motor1[9] = \<const0> ;
  assign motor1[8] = \<const0> ;
  assign motor1[7] = \^motor1 [6];
  assign motor1[6] = \^motor1 [6];
  assign motor1[5] = \^motor1 [4];
  assign motor1[4] = \^motor1 [4];
  assign motor1[3] = \^motor1 [6];
  assign motor1[2] = \<const0> ;
  assign motor1[1] = \<const0> ;
  assign motor1[0] = \<const0> ;
  assign motor2[10] = \^motor2 [10];
  assign motor2[9] = \<const0> ;
  assign motor2[8] = \<const0> ;
  assign motor2[7] = \^motor2 [6];
  assign motor2[6] = \^motor2 [6];
  assign motor2[5] = \^motor2 [4];
  assign motor2[4] = \^motor2 [4];
  assign motor2[3] = \^motor2 [6];
  assign motor2[2] = \<const0> ;
  assign motor2[1] = \<const0> ;
  assign motor2[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FPGA_Main_task_manuel_mode_block_0_0_manuel_mode_block U0
       (.btn(btn),
        .clk(clk),
        .en(en),
        .motor1({\^motor1 [10],\^motor1 [6],\^motor1 [4]}),
        .motor2({\^motor2 [10],\^motor2 [6],\^motor2 [4]}),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "manuel_mode_block" *) 
module FPGA_Main_task_manuel_mode_block_0_0_manuel_mode_block
   (motor1,
    motor2,
    clk,
    rst,
    btn,
    en);
  output [2:0]motor1;
  output [2:0]motor2;
  input clk;
  input rst;
  input [3:0]btn;
  input en;

  wire [3:0]btn;
  wire clk;
  wire en;
  wire [2:0]motor1;
  wire \motor1[10]_i_1_n_0 ;
  wire \motor1[5]_i_1_n_0 ;
  wire \motor1[7]_i_1_n_0 ;
  wire [2:0]motor2;
  wire \motor2[10]_i_1_n_0 ;
  wire \motor2[5]_i_1_n_0 ;
  wire \motor2[7]_i_1_n_0 ;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \motor1[10]_i_1 
       (.I0(btn[1]),
        .I1(btn[0]),
        .I2(en),
        .O(\motor1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \motor1[5]_i_1 
       (.I0(btn[1]),
        .I1(en),
        .O(\motor1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \motor1[7]_i_1 
       (.I0(en),
        .I1(btn[1]),
        .I2(btn[0]),
        .O(\motor1[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \motor1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\motor1[10]_i_1_n_0 ),
        .Q(motor1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \motor1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\motor1[5]_i_1_n_0 ),
        .Q(motor1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \motor1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\motor1[7]_i_1_n_0 ),
        .Q(motor1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \motor2[10]_i_1 
       (.I0(btn[3]),
        .I1(btn[2]),
        .I2(en),
        .O(\motor2[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \motor2[5]_i_1 
       (.I0(btn[3]),
        .I1(en),
        .O(\motor2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \motor2[7]_i_1 
       (.I0(en),
        .I1(btn[3]),
        .I2(btn[2]),
        .O(\motor2[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \motor2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\motor2[10]_i_1_n_0 ),
        .Q(motor2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \motor2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\motor2[5]_i_1_n_0 ),
        .Q(motor2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \motor2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\motor2[7]_i_1_n_0 ),
        .Q(motor2[1]));
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
