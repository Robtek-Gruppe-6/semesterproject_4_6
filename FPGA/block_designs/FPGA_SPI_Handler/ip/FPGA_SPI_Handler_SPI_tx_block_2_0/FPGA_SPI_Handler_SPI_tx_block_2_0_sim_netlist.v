// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr 23 11:13:01 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_SPI_tx_block_2_0/FPGA_SPI_Handler_SPI_tx_block_2_0_sim_netlist.v
// Design      : FPGA_SPI_Handler_SPI_tx_block_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_SPI_Handler_SPI_tx_block_2_0,SPI_tx_block,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SPI_tx_block,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_SPI_Handler_SPI_tx_block_2_0
   (clk,
    data_in,
    en,
    rst,
    bit_out,
    done);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_SPI_Handler_clk_0, INSERT_VIP 0" *) input clk;
  input [16:0]data_in;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output bit_out;
  output done;

  wire \<const0> ;
  wire clk;
  wire done;
  wire en;
  wire rst;

  assign bit_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FPGA_SPI_Handler_SPI_tx_block_2_0_SPI_tx_block U0
       (.clk(clk),
        .done(done),
        .en(en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "SPI_tx_block" *) 
module FPGA_SPI_Handler_SPI_tx_block_2_0_SPI_tx_block
   (done,
    en,
    clk,
    rst);
  output done;
  input en;
  input clk;
  input rst;

  wire clk;
  wire done;
  wire done0_n_0;
  wire en;
  wire rst;
  wire \shift_cnt[0]_i_1_n_0 ;
  wire \shift_cnt[1]_i_1_n_0 ;
  wire \shift_cnt[2]_i_1_n_0 ;
  wire \shift_cnt[3]_i_1_n_0 ;
  wire \shift_cnt[4]_i_1_n_0 ;
  wire \shift_cnt_reg_n_0_[0] ;
  wire \shift_cnt_reg_n_0_[1] ;
  wire \shift_cnt_reg_n_0_[2] ;
  wire \shift_cnt_reg_n_0_[3] ;
  wire \shift_cnt_reg_n_0_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    done0
       (.I0(\shift_cnt_reg_n_0_[4] ),
        .I1(\shift_cnt_reg_n_0_[3] ),
        .I2(\shift_cnt_reg_n_0_[0] ),
        .I3(\shift_cnt_reg_n_0_[1] ),
        .I4(\shift_cnt_reg_n_0_[2] ),
        .O(done0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(done0_n_0),
        .Q(done));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000001FF)) 
    \shift_cnt[0]_i_1 
       (.I0(\shift_cnt_reg_n_0_[2] ),
        .I1(\shift_cnt_reg_n_0_[1] ),
        .I2(\shift_cnt_reg_n_0_[3] ),
        .I3(\shift_cnt_reg_n_0_[4] ),
        .I4(\shift_cnt_reg_n_0_[0] ),
        .O(\shift_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \shift_cnt[1]_i_1 
       (.I0(\shift_cnt_reg_n_0_[1] ),
        .I1(\shift_cnt_reg_n_0_[0] ),
        .I2(\shift_cnt_reg_n_0_[4] ),
        .O(\shift_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \shift_cnt[2]_i_1 
       (.I0(\shift_cnt_reg_n_0_[2] ),
        .I1(\shift_cnt_reg_n_0_[1] ),
        .I2(\shift_cnt_reg_n_0_[0] ),
        .I3(\shift_cnt_reg_n_0_[4] ),
        .O(\shift_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \shift_cnt[3]_i_1 
       (.I0(\shift_cnt_reg_n_0_[2] ),
        .I1(\shift_cnt_reg_n_0_[1] ),
        .I2(\shift_cnt_reg_n_0_[0] ),
        .I3(\shift_cnt_reg_n_0_[3] ),
        .I4(\shift_cnt_reg_n_0_[4] ),
        .O(\shift_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00018000)) 
    \shift_cnt[4]_i_1 
       (.I0(\shift_cnt_reg_n_0_[2] ),
        .I1(\shift_cnt_reg_n_0_[1] ),
        .I2(\shift_cnt_reg_n_0_[0] ),
        .I3(\shift_cnt_reg_n_0_[3] ),
        .I4(\shift_cnt_reg_n_0_[4] ),
        .O(\shift_cnt[4]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_cnt_reg[0] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\shift_cnt[0]_i_1_n_0 ),
        .Q(\shift_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_cnt_reg[1] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\shift_cnt[1]_i_1_n_0 ),
        .Q(\shift_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_cnt_reg[2] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\shift_cnt[2]_i_1_n_0 ),
        .Q(\shift_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_cnt_reg[3] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\shift_cnt[3]_i_1_n_0 ),
        .Q(\shift_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_cnt_reg[4] 
       (.C(clk),
        .CE(en),
        .CLR(rst),
        .D(\shift_cnt[4]_i_1_n_0 ),
        .Q(\shift_cnt_reg_n_0_[4] ));
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
