// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:08:22 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Encoder_handler_inst_0/ip/FPGA_Encoder_handler_inst_0_counter_nbit_0_1/FPGA_Encoder_handler_inst_0_counter_nbit_0_sim_netlist.v
// Design      : FPGA_Encoder_handler_inst_0_counter_nbit_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_Encoder_handler_inst_0_counter_nbit_0,counter_nbit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "counter_nbit,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_Encoder_handler_inst_0_counter_nbit_0
   (cnt,
    done,
    clk,
    en,
    dir,
    rst);
  output [14:0]cnt;
  output done;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Encoder_handler_clk, INSERT_VIP 0" *) input clk;
  input en;
  input dir;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire clk;
  wire [14:0]cnt;
  wire dir;
  wire done;
  wire en;
  wire rst;

  FPGA_Encoder_handler_inst_0_counter_nbit_0_counter_nbit U0
       (.clk(clk),
        .cnt(cnt),
        .dir(dir),
        .done(done),
        .en(en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "counter_nbit" *) 
module FPGA_Encoder_handler_inst_0_counter_nbit_0_counter_nbit
   (cnt,
    done,
    dir,
    en,
    clk,
    rst);
  output [14:0]cnt;
  output done;
  input dir;
  input en;
  input clk;
  input rst;

  wire clk;
  wire [14:0]cnt;
  wire cnt_sig;
  wire \cnt_sig[11]_i_2_n_0 ;
  wire \cnt_sig[11]_i_3_n_0 ;
  wire \cnt_sig[11]_i_4_n_0 ;
  wire \cnt_sig[11]_i_5_n_0 ;
  wire \cnt_sig[11]_i_6_n_0 ;
  wire \cnt_sig[11]_i_7_n_0 ;
  wire \cnt_sig[11]_i_8_n_0 ;
  wire \cnt_sig[11]_i_9_n_0 ;
  wire \cnt_sig[14]_i_3_n_0 ;
  wire \cnt_sig[14]_i_4_n_0 ;
  wire \cnt_sig[14]_i_5_n_0 ;
  wire \cnt_sig[14]_i_6_n_0 ;
  wire \cnt_sig[14]_i_7_n_0 ;
  wire \cnt_sig[3]_i_2_n_0 ;
  wire \cnt_sig[3]_i_3_n_0 ;
  wire \cnt_sig[3]_i_4_n_0 ;
  wire \cnt_sig[3]_i_5_n_0 ;
  wire \cnt_sig[3]_i_6_n_0 ;
  wire \cnt_sig[3]_i_7_n_0 ;
  wire \cnt_sig[3]_i_8_n_0 ;
  wire \cnt_sig[3]_i_9_n_0 ;
  wire \cnt_sig[7]_i_2_n_0 ;
  wire \cnt_sig[7]_i_3_n_0 ;
  wire \cnt_sig[7]_i_4_n_0 ;
  wire \cnt_sig[7]_i_5_n_0 ;
  wire \cnt_sig[7]_i_6_n_0 ;
  wire \cnt_sig[7]_i_7_n_0 ;
  wire \cnt_sig[7]_i_8_n_0 ;
  wire \cnt_sig[7]_i_9_n_0 ;
  wire \cnt_sig_reg[11]_i_1_n_0 ;
  wire \cnt_sig_reg[11]_i_1_n_1 ;
  wire \cnt_sig_reg[11]_i_1_n_2 ;
  wire \cnt_sig_reg[11]_i_1_n_3 ;
  wire \cnt_sig_reg[11]_i_1_n_4 ;
  wire \cnt_sig_reg[11]_i_1_n_5 ;
  wire \cnt_sig_reg[11]_i_1_n_6 ;
  wire \cnt_sig_reg[11]_i_1_n_7 ;
  wire \cnt_sig_reg[14]_i_2_n_2 ;
  wire \cnt_sig_reg[14]_i_2_n_3 ;
  wire \cnt_sig_reg[14]_i_2_n_5 ;
  wire \cnt_sig_reg[14]_i_2_n_6 ;
  wire \cnt_sig_reg[14]_i_2_n_7 ;
  wire \cnt_sig_reg[3]_i_1_n_0 ;
  wire \cnt_sig_reg[3]_i_1_n_1 ;
  wire \cnt_sig_reg[3]_i_1_n_2 ;
  wire \cnt_sig_reg[3]_i_1_n_3 ;
  wire \cnt_sig_reg[3]_i_1_n_4 ;
  wire \cnt_sig_reg[3]_i_1_n_5 ;
  wire \cnt_sig_reg[3]_i_1_n_6 ;
  wire \cnt_sig_reg[3]_i_1_n_7 ;
  wire \cnt_sig_reg[7]_i_1_n_0 ;
  wire \cnt_sig_reg[7]_i_1_n_1 ;
  wire \cnt_sig_reg[7]_i_1_n_2 ;
  wire \cnt_sig_reg[7]_i_1_n_3 ;
  wire \cnt_sig_reg[7]_i_1_n_4 ;
  wire \cnt_sig_reg[7]_i_1_n_5 ;
  wire \cnt_sig_reg[7]_i_1_n_6 ;
  wire \cnt_sig_reg[7]_i_1_n_7 ;
  wire dir;
  wire done;
  wire done_sig_i_1_n_0;
  wire done_sig_i_2_n_0;
  wire done_sig_i_3_n_0;
  wire done_sig_i_4_n_0;
  wire en;
  wire rst;
  wire [3:2]\NLW_cnt_sig_reg[14]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_sig_reg[14]_i_2_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[11]_i_2 
       (.I0(dir),
        .O(\cnt_sig[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[11]_i_3 
       (.I0(dir),
        .O(\cnt_sig[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[11]_i_4 
       (.I0(dir),
        .O(\cnt_sig[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[11]_i_5 
       (.I0(dir),
        .O(\cnt_sig[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[11]_i_6 
       (.I0(dir),
        .I1(cnt[11]),
        .O(\cnt_sig[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[11]_i_7 
       (.I0(dir),
        .I1(cnt[10]),
        .O(\cnt_sig[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[11]_i_8 
       (.I0(dir),
        .I1(cnt[9]),
        .O(\cnt_sig[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[11]_i_9 
       (.I0(dir),
        .I1(cnt[8]),
        .O(\cnt_sig[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_sig[14]_i_1 
       (.I0(rst),
        .I1(en),
        .O(cnt_sig));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[14]_i_3 
       (.I0(dir),
        .O(\cnt_sig[14]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[14]_i_4 
       (.I0(dir),
        .O(\cnt_sig[14]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[14]_i_5 
       (.I0(dir),
        .I1(cnt[14]),
        .O(\cnt_sig[14]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[14]_i_6 
       (.I0(dir),
        .I1(cnt[13]),
        .O(\cnt_sig[14]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[14]_i_7 
       (.I0(dir),
        .I1(cnt[12]),
        .O(\cnt_sig[14]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[3]_i_2 
       (.I0(dir),
        .O(\cnt_sig[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[3]_i_3 
       (.I0(dir),
        .O(\cnt_sig[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[3]_i_4 
       (.I0(dir),
        .O(\cnt_sig[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[3]_i_5 
       (.I0(dir),
        .O(\cnt_sig[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[3]_i_6 
       (.I0(dir),
        .I1(cnt[3]),
        .O(\cnt_sig[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[3]_i_7 
       (.I0(dir),
        .I1(cnt[2]),
        .O(\cnt_sig[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[3]_i_8 
       (.I0(dir),
        .I1(cnt[1]),
        .O(\cnt_sig[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_sig[3]_i_9 
       (.I0(dir),
        .I1(cnt[0]),
        .O(\cnt_sig[3]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[7]_i_2 
       (.I0(dir),
        .O(\cnt_sig[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[7]_i_3 
       (.I0(dir),
        .O(\cnt_sig[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[7]_i_4 
       (.I0(dir),
        .O(\cnt_sig[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_sig[7]_i_5 
       (.I0(dir),
        .O(\cnt_sig[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[7]_i_6 
       (.I0(dir),
        .I1(cnt[7]),
        .O(\cnt_sig[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[7]_i_7 
       (.I0(dir),
        .I1(cnt[6]),
        .O(\cnt_sig[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[7]_i_8 
       (.I0(dir),
        .I1(cnt[5]),
        .O(\cnt_sig[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_sig[7]_i_9 
       (.I0(dir),
        .I1(cnt[4]),
        .O(\cnt_sig[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[0] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[3]_i_1_n_7 ),
        .Q(cnt[0]),
        .R(cnt_sig));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[10] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[11]_i_1_n_5 ),
        .Q(cnt[10]),
        .R(cnt_sig));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[11] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[11]_i_1_n_4 ),
        .Q(cnt[11]),
        .R(cnt_sig));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sig_reg[11]_i_1 
       (.CI(\cnt_sig_reg[7]_i_1_n_0 ),
        .CO({\cnt_sig_reg[11]_i_1_n_0 ,\cnt_sig_reg[11]_i_1_n_1 ,\cnt_sig_reg[11]_i_1_n_2 ,\cnt_sig_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cnt_sig[11]_i_2_n_0 ,\cnt_sig[11]_i_3_n_0 ,\cnt_sig[11]_i_4_n_0 ,\cnt_sig[11]_i_5_n_0 }),
        .O({\cnt_sig_reg[11]_i_1_n_4 ,\cnt_sig_reg[11]_i_1_n_5 ,\cnt_sig_reg[11]_i_1_n_6 ,\cnt_sig_reg[11]_i_1_n_7 }),
        .S({\cnt_sig[11]_i_6_n_0 ,\cnt_sig[11]_i_7_n_0 ,\cnt_sig[11]_i_8_n_0 ,\cnt_sig[11]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[12] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[14]_i_2_n_7 ),
        .Q(cnt[12]),
        .R(cnt_sig));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[13] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[14]_i_2_n_6 ),
        .Q(cnt[13]),
        .R(cnt_sig));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[14] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[14]_i_2_n_5 ),
        .Q(cnt[14]),
        .R(cnt_sig));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sig_reg[14]_i_2 
       (.CI(\cnt_sig_reg[11]_i_1_n_0 ),
        .CO({\NLW_cnt_sig_reg[14]_i_2_CO_UNCONNECTED [3:2],\cnt_sig_reg[14]_i_2_n_2 ,\cnt_sig_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\cnt_sig[14]_i_3_n_0 ,\cnt_sig[14]_i_4_n_0 }),
        .O({\NLW_cnt_sig_reg[14]_i_2_O_UNCONNECTED [3],\cnt_sig_reg[14]_i_2_n_5 ,\cnt_sig_reg[14]_i_2_n_6 ,\cnt_sig_reg[14]_i_2_n_7 }),
        .S({1'b0,\cnt_sig[14]_i_5_n_0 ,\cnt_sig[14]_i_6_n_0 ,\cnt_sig[14]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[1] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[3]_i_1_n_6 ),
        .Q(cnt[1]),
        .R(cnt_sig));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[2] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[3]_i_1_n_5 ),
        .Q(cnt[2]),
        .R(cnt_sig));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[3] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[3]_i_1_n_4 ),
        .Q(cnt[3]),
        .R(cnt_sig));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sig_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\cnt_sig_reg[3]_i_1_n_0 ,\cnt_sig_reg[3]_i_1_n_1 ,\cnt_sig_reg[3]_i_1_n_2 ,\cnt_sig_reg[3]_i_1_n_3 }),
        .CYINIT(\cnt_sig[3]_i_2_n_0 ),
        .DI({\cnt_sig[3]_i_3_n_0 ,\cnt_sig[3]_i_4_n_0 ,\cnt_sig[3]_i_5_n_0 ,dir}),
        .O({\cnt_sig_reg[3]_i_1_n_4 ,\cnt_sig_reg[3]_i_1_n_5 ,\cnt_sig_reg[3]_i_1_n_6 ,\cnt_sig_reg[3]_i_1_n_7 }),
        .S({\cnt_sig[3]_i_6_n_0 ,\cnt_sig[3]_i_7_n_0 ,\cnt_sig[3]_i_8_n_0 ,\cnt_sig[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[4] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[7]_i_1_n_7 ),
        .Q(cnt[4]),
        .R(cnt_sig));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[5] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[7]_i_1_n_6 ),
        .Q(cnt[5]),
        .R(cnt_sig));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[6] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[7]_i_1_n_5 ),
        .Q(cnt[6]),
        .R(cnt_sig));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[7] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[7]_i_1_n_4 ),
        .Q(cnt[7]),
        .R(cnt_sig));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_sig_reg[7]_i_1 
       (.CI(\cnt_sig_reg[3]_i_1_n_0 ),
        .CO({\cnt_sig_reg[7]_i_1_n_0 ,\cnt_sig_reg[7]_i_1_n_1 ,\cnt_sig_reg[7]_i_1_n_2 ,\cnt_sig_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cnt_sig[7]_i_2_n_0 ,\cnt_sig[7]_i_3_n_0 ,\cnt_sig[7]_i_4_n_0 ,\cnt_sig[7]_i_5_n_0 }),
        .O({\cnt_sig_reg[7]_i_1_n_4 ,\cnt_sig_reg[7]_i_1_n_5 ,\cnt_sig_reg[7]_i_1_n_6 ,\cnt_sig_reg[7]_i_1_n_7 }),
        .S({\cnt_sig[7]_i_6_n_0 ,\cnt_sig[7]_i_7_n_0 ,\cnt_sig[7]_i_8_n_0 ,\cnt_sig[7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[8] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[11]_i_1_n_7 ),
        .Q(cnt[8]),
        .R(cnt_sig));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_sig_reg[9] 
       (.C(clk),
        .CE(en),
        .D(\cnt_sig_reg[11]_i_1_n_6 ),
        .Q(cnt[9]),
        .R(cnt_sig));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    done_sig_i_1
       (.I0(done_sig_i_2_n_0),
        .I1(done_sig_i_3_n_0),
        .I2(done_sig_i_4_n_0),
        .I3(rst),
        .I4(done),
        .O(done_sig_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    done_sig_i_2
       (.I0(cnt[5]),
        .I1(cnt[6]),
        .I2(cnt[3]),
        .I3(cnt[4]),
        .I4(cnt[8]),
        .I5(cnt[7]),
        .O(done_sig_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    done_sig_i_3
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .O(done_sig_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    done_sig_i_4
       (.I0(cnt[11]),
        .I1(cnt[12]),
        .I2(cnt[9]),
        .I3(cnt[10]),
        .I4(cnt[14]),
        .I5(cnt[13]),
        .O(done_sig_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_sig_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_sig_i_1_n_0),
        .Q(done),
        .R(1'b0));
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
