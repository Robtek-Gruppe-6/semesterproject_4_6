// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr 23 11:13:01 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_SPI_rx_block_0_0/FPGA_SPI_Handler_SPI_rx_block_0_0_sim_netlist.v
// Design      : FPGA_SPI_Handler_SPI_rx_block_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_SPI_Handler_SPI_rx_block_0_0,SPI_rx_block,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SPI_rx_block,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_SPI_Handler_SPI_rx_block_0_0
   (clk,
    data_to_read,
    en,
    rst,
    received_data,
    intr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_SPI_Handler_clk_0, INSERT_VIP 0" *) input clk;
  input data_to_read;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [11:0]received_data;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 intr INTERRUPT" *) (* x_interface_mode = "master intr" *) (* x_interface_parameter = "XIL_INTERFACENAME intr, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output intr;

  wire clk;
  wire data_to_read;
  wire en;
  wire intr;
  wire [11:0]received_data;
  wire rst;

  FPGA_SPI_Handler_SPI_rx_block_0_0_SPI_rx_block U0
       (.clk(clk),
        .data_to_read(data_to_read),
        .en(en),
        .intr(intr),
        .received_data(received_data),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "SPI_rx_block" *) 
module FPGA_SPI_Handler_SPI_rx_block_0_0_SPI_rx_block
   (received_data,
    intr,
    en,
    rst,
    clk,
    data_to_read);
  output [11:0]received_data;
  output intr;
  input en;
  input rst;
  input clk;
  input data_to_read;

  wire bit_count;
  wire \bit_count[3]_i_1_n_0 ;
  wire [3:2]bit_count_reg;
  wire \bit_count_reg_n_0_[0] ;
  wire \bit_count_reg_n_0_[1] ;
  wire clk;
  wire data_to_read;
  wire en;
  wire intr;
  wire intr_i_1_n_0;
  wire [11:1]p_0_in;
  wire [3:0]p_0_in__0;
  wire [11:0]received_data;
  wire rst;
  wire \shift_reg[11]_i_1_n_0 ;
  wire \shift_reg_reg_n_0_[11] ;

  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count_reg_n_0_[0] ),
        .I1(\bit_count_reg_n_0_[1] ),
        .I2(bit_count_reg[2]),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h0080)) 
    \bit_count[3]_i_1 
       (.I0(bit_count_reg[3]),
        .I1(bit_count_reg[2]),
        .I2(en),
        .I3(rst),
        .O(\bit_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_count[3]_i_2 
       (.I0(\bit_count_reg_n_0_[1] ),
        .I1(\bit_count_reg_n_0_[0] ),
        .I2(bit_count_reg[2]),
        .I3(bit_count_reg[3]),
        .O(p_0_in__0[3]));
  FDSE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\bit_count_reg_n_0_[0] ),
        .S(\bit_count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\bit_count_reg_n_0_[1] ),
        .R(\bit_count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(bit_count_reg[2]),
        .R(\bit_count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(bit_count_reg[3]),
        .R(\bit_count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAC0AA)) 
    intr_i_1
       (.I0(intr),
        .I1(bit_count_reg[3]),
        .I2(bit_count_reg[2]),
        .I3(en),
        .I4(rst),
        .O(intr_i_1_n_0));
  FDRE intr_reg
       (.C(clk),
        .CE(1'b1),
        .D(intr_i_1_n_0),
        .Q(intr),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \received_data[11]_i_1 
       (.I0(en),
        .I1(bit_count_reg[2]),
        .I2(bit_count_reg[3]),
        .O(bit_count));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[0] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(received_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[10] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[11]),
        .Q(received_data[10]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[11] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(\shift_reg_reg_n_0_[11] ),
        .Q(received_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[1] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[2]),
        .Q(received_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[2] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(received_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[3] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(received_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[4] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[5]),
        .Q(received_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[5] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[6]),
        .Q(received_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[6] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[7]),
        .Q(received_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[7] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[8]),
        .Q(received_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[8] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[9]),
        .Q(received_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \received_data_reg[9] 
       (.C(clk),
        .CE(bit_count),
        .CLR(rst),
        .D(p_0_in[10]),
        .Q(received_data[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \shift_reg[11]_i_1 
       (.I0(en),
        .I1(rst),
        .O(\shift_reg[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(data_to_read),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[10] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[11] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(\shift_reg_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[4] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[5] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[6] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[7] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[8] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_reg_reg[9] 
       (.C(clk),
        .CE(\shift_reg[11]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(p_0_in[10]),
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
