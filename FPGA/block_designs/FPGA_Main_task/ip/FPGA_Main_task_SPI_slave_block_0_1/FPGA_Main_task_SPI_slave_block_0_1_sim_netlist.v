// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:08:22 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_SPI_slave_block_0_1/FPGA_Main_task_SPI_slave_block_0_1_sim_netlist.v
// Design      : FPGA_Main_task_SPI_slave_block_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FPGA_Main_task_SPI_slave_block_0_1,SPI_slave_block,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SPI_slave_block,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module FPGA_Main_task_SPI_slave_block_0_1
   (cpol,
    cpha,
    sck,
    ss,
    mosi,
    miso,
    read_en,
    tx,
    rx,
    busy,
    rst);
  input cpol;
  input cpha;
  input sck;
  input ss;
  input mosi;
  output miso;
  input read_en;
  input [15:0]tx;
  output [15:0]rx;
  output busy;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;

  wire busy;
  wire cpha;
  wire cpol;
  wire miso;
  wire mosi;
  wire read_en;
  wire rst;
  wire [15:0]rx;
  wire sck;
  wire ss;
  wire [15:0]tx;

  FPGA_Main_task_SPI_slave_block_0_1_SPI_slave_block U0
       (.cpha(cpha),
        .cpol(cpol),
        .miso(miso),
        .mosi(mosi),
        .read_en(read_en),
        .rst(rst),
        .rx(rx),
        .sck(sck),
        .ss(ss),
        .tx(tx));
  LUT1 #(
    .INIT(2'h1)) 
    busy_INST_0
       (.I0(ss),
        .O(busy));
endmodule

(* ORIG_REF_NAME = "SPI_slave_block" *) 
module FPGA_Main_task_SPI_slave_block_0_1_SPI_slave_block
   (miso,
    rx,
    ss,
    rst,
    read_en,
    cpha,
    sck,
    cpol,
    tx,
    mosi);
  output miso;
  output [15:0]rx;
  input ss;
  input rst;
  input read_en;
  input cpha;
  input sck;
  input cpol;
  input [15:0]tx;
  input mosi;

  wire \active_bit[16]_i_1_n_0 ;
  wire \active_bit[1]_C_i_1_n_0 ;
  wire \active_bit[2]_i_1_n_0 ;
  wire \active_bit_reg[0]_LDC_n_0 ;
  wire \active_bit_reg[0]_P_n_0 ;
  wire \active_bit_reg[1]_C_n_0 ;
  wire \active_bit_reg[1]_LDC_i_1_n_0 ;
  wire \active_bit_reg[1]_LDC_i_2_n_0 ;
  wire \active_bit_reg[1]_LDC_n_0 ;
  wire \active_bit_reg[1]_P_n_0 ;
  wire \active_bit_reg_n_0_[10] ;
  wire \active_bit_reg_n_0_[11] ;
  wire \active_bit_reg_n_0_[12] ;
  wire \active_bit_reg_n_0_[13] ;
  wire \active_bit_reg_n_0_[14] ;
  wire \active_bit_reg_n_0_[15] ;
  wire \active_bit_reg_n_0_[16] ;
  wire \active_bit_reg_n_0_[2] ;
  wire \active_bit_reg_n_0_[3] ;
  wire \active_bit_reg_n_0_[4] ;
  wire \active_bit_reg_n_0_[5] ;
  wire \active_bit_reg_n_0_[6] ;
  wire \active_bit_reg_n_0_[7] ;
  wire \active_bit_reg_n_0_[8] ;
  wire \active_bit_reg_n_0_[9] ;
  wire cpha;
  wire cpol;
  wire miso;
  wire miso_i_2_n_0;
  wire mosi;
  wire p_2_in;
  wire [15:1]p_3_in;
  wire read_en;
  wire rst;
  wire [15:0]rx;
  wire rx0;
  wire [15:0]rx_reg;
  wire \rx_reg[15]_i_1__0_n_0 ;
  wire sck;
  wire ss;
  wire [15:0]tx;
  wire [15:15]tx_reg;
  wire \tx_reg[10]_C_i_1_n_0 ;
  wire \tx_reg[11]_C_i_1_n_0 ;
  wire \tx_reg[12]_C_i_1_n_0 ;
  wire \tx_reg[13]_C_i_1_n_0 ;
  wire \tx_reg[14]_C_i_1_n_0 ;
  wire \tx_reg[15]_C_i_1_n_0 ;
  wire \tx_reg[1]_C_i_1_n_0 ;
  wire \tx_reg[2]_C_i_1_n_0 ;
  wire \tx_reg[3]_C_i_1_n_0 ;
  wire \tx_reg[4]_C_i_1_n_0 ;
  wire \tx_reg[5]_C_i_1_n_0 ;
  wire \tx_reg[6]_C_i_1_n_0 ;
  wire \tx_reg[7]_C_i_1_n_0 ;
  wire \tx_reg[8]_C_i_1_n_0 ;
  wire \tx_reg[9]_C_i_1_n_0 ;
  wire \tx_reg_reg[0]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[0]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[0]_LDC_n_0 ;
  wire \tx_reg_reg[0]_P_n_0 ;
  wire \tx_reg_reg[10]_C_n_0 ;
  wire \tx_reg_reg[10]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[10]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[10]_LDC_n_0 ;
  wire \tx_reg_reg[10]_P_n_0 ;
  wire \tx_reg_reg[11]_C_n_0 ;
  wire \tx_reg_reg[11]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[11]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[11]_LDC_n_0 ;
  wire \tx_reg_reg[11]_P_n_0 ;
  wire \tx_reg_reg[12]_C_n_0 ;
  wire \tx_reg_reg[12]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[12]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[12]_LDC_n_0 ;
  wire \tx_reg_reg[12]_P_n_0 ;
  wire \tx_reg_reg[13]_C_n_0 ;
  wire \tx_reg_reg[13]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[13]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[13]_LDC_n_0 ;
  wire \tx_reg_reg[13]_P_n_0 ;
  wire \tx_reg_reg[14]_C_n_0 ;
  wire \tx_reg_reg[14]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[14]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[14]_LDC_n_0 ;
  wire \tx_reg_reg[14]_P_n_0 ;
  wire \tx_reg_reg[15]_C_n_0 ;
  wire \tx_reg_reg[15]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[15]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[15]_LDC_n_0 ;
  wire \tx_reg_reg[15]_P_n_0 ;
  wire \tx_reg_reg[1]_C_n_0 ;
  wire \tx_reg_reg[1]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[1]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[1]_LDC_n_0 ;
  wire \tx_reg_reg[1]_P_n_0 ;
  wire \tx_reg_reg[2]_C_n_0 ;
  wire \tx_reg_reg[2]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[2]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[2]_LDC_n_0 ;
  wire \tx_reg_reg[2]_P_n_0 ;
  wire \tx_reg_reg[3]_C_n_0 ;
  wire \tx_reg_reg[3]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[3]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[3]_LDC_n_0 ;
  wire \tx_reg_reg[3]_P_n_0 ;
  wire \tx_reg_reg[4]_C_n_0 ;
  wire \tx_reg_reg[4]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[4]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[4]_LDC_n_0 ;
  wire \tx_reg_reg[4]_P_n_0 ;
  wire \tx_reg_reg[5]_C_n_0 ;
  wire \tx_reg_reg[5]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[5]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[5]_LDC_n_0 ;
  wire \tx_reg_reg[5]_P_n_0 ;
  wire \tx_reg_reg[6]_C_n_0 ;
  wire \tx_reg_reg[6]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[6]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[6]_LDC_n_0 ;
  wire \tx_reg_reg[6]_P_n_0 ;
  wire \tx_reg_reg[7]_C_n_0 ;
  wire \tx_reg_reg[7]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[7]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[7]_LDC_n_0 ;
  wire \tx_reg_reg[7]_P_n_0 ;
  wire \tx_reg_reg[8]_C_n_0 ;
  wire \tx_reg_reg[8]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[8]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[8]_LDC_n_0 ;
  wire \tx_reg_reg[8]_P_n_0 ;
  wire \tx_reg_reg[9]_C_n_0 ;
  wire \tx_reg_reg[9]_LDC_i_1_n_0 ;
  wire \tx_reg_reg[9]_LDC_i_2_n_0 ;
  wire \tx_reg_reg[9]_LDC_n_0 ;
  wire \tx_reg_reg[9]_P_n_0 ;

  LUT2 #(
    .INIT(4'hE)) 
    \active_bit[16]_i_1 
       (.I0(ss),
        .I1(rst),
        .O(\active_bit[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \active_bit[1]_C_i_1 
       (.I0(\active_bit_reg[0]_LDC_n_0 ),
        .I1(\active_bit_reg[0]_P_n_0 ),
        .O(\active_bit[1]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \active_bit[2]_i_1 
       (.I0(\active_bit_reg[1]_P_n_0 ),
        .I1(\active_bit_reg[1]_LDC_n_0 ),
        .I2(\active_bit_reg[1]_C_n_0 ),
        .O(\active_bit[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \active_bit_reg[0]_LDC 
       (.CLR(\active_bit_reg[1]_LDC_i_1_n_0 ),
        .D(1'b1),
        .G(\active_bit_reg[1]_LDC_i_2_n_0 ),
        .GE(1'b1),
        .Q(\active_bit_reg[0]_LDC_n_0 ));
  FDPE \active_bit_reg[0]_P 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\active_bit_reg[1]_LDC_i_2_n_0 ),
        .Q(\active_bit_reg[0]_P_n_0 ));
  FDCE \active_bit_reg[10] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[9] ),
        .Q(\active_bit_reg_n_0_[10] ));
  FDCE \active_bit_reg[11] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[10] ),
        .Q(\active_bit_reg_n_0_[11] ));
  FDCE \active_bit_reg[12] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[11] ),
        .Q(\active_bit_reg_n_0_[12] ));
  FDCE \active_bit_reg[13] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[12] ),
        .Q(\active_bit_reg_n_0_[13] ));
  FDCE \active_bit_reg[14] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[13] ),
        .Q(\active_bit_reg_n_0_[14] ));
  FDCE \active_bit_reg[15] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[14] ),
        .Q(\active_bit_reg_n_0_[15] ));
  FDCE \active_bit_reg[16] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[15] ),
        .Q(\active_bit_reg_n_0_[16] ));
  FDCE \active_bit_reg[1]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit_reg[1]_LDC_i_2_n_0 ),
        .D(\active_bit[1]_C_i_1_n_0 ),
        .Q(\active_bit_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \active_bit_reg[1]_LDC 
       (.CLR(\active_bit_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\active_bit_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\active_bit_reg[1]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \active_bit_reg[1]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(cpha),
        .O(\active_bit_reg[1]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \active_bit_reg[1]_LDC_i_2 
       (.I0(cpha),
        .I1(rst),
        .I2(ss),
        .O(\active_bit_reg[1]_LDC_i_2_n_0 ));
  FDPE \active_bit_reg[1]_P 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .D(\active_bit[1]_C_i_1_n_0 ),
        .PRE(\active_bit_reg[1]_LDC_i_1_n_0 ),
        .Q(\active_bit_reg[1]_P_n_0 ));
  FDCE \active_bit_reg[2] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit[2]_i_1_n_0 ),
        .Q(\active_bit_reg_n_0_[2] ));
  FDCE \active_bit_reg[3] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[2] ),
        .Q(\active_bit_reg_n_0_[3] ));
  FDCE \active_bit_reg[4] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[3] ),
        .Q(\active_bit_reg_n_0_[4] ));
  FDCE \active_bit_reg[5] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[4] ),
        .Q(\active_bit_reg_n_0_[5] ));
  FDCE \active_bit_reg[6] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[5] ),
        .Q(\active_bit_reg_n_0_[6] ));
  FDCE \active_bit_reg[7] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[6] ),
        .Q(\active_bit_reg_n_0_[7] ));
  FDCE \active_bit_reg[8] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[7] ),
        .Q(\active_bit_reg_n_0_[8] ));
  FDCE \active_bit_reg[9] 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\active_bit[16]_i_1_n_0 ),
        .D(\active_bit_reg_n_0_[8] ),
        .Q(\active_bit_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'hB8)) 
    miso_i_1
       (.I0(\tx_reg_reg[15]_P_n_0 ),
        .I1(\tx_reg_reg[15]_LDC_n_0 ),
        .I2(\tx_reg_reg[15]_C_n_0 ),
        .O(tx_reg));
  LUT4 #(
    .INIT(16'h0069)) 
    miso_i_2
       (.I0(sck),
        .I1(cpha),
        .I2(cpol),
        .I3(ss),
        .O(miso_i_2_n_0));
  FDRE miso_reg
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .D(tx_reg),
        .Q(miso),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[0] 
       (.CLR(rst),
        .D(rx_reg[0]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[10] 
       (.CLR(rst),
        .D(rx_reg[10]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[11] 
       (.CLR(rst),
        .D(rx_reg[11]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[12] 
       (.CLR(rst),
        .D(rx_reg[12]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[13] 
       (.CLR(rst),
        .D(rx_reg[13]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[14] 
       (.CLR(rst),
        .D(rx_reg[14]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[15] 
       (.CLR(rst),
        .D(rx_reg[15]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \rx_reg[15]_i_1 
       (.I0(ss),
        .I1(read_en),
        .O(rx0));
  LUT6 #(
    .INIT(64'h000000000047FF47)) 
    \rx_reg[15]_i_1__0 
       (.I0(\active_bit_reg[1]_P_n_0 ),
        .I1(\active_bit_reg[1]_LDC_n_0 ),
        .I2(\active_bit_reg[1]_C_n_0 ),
        .I3(cpha),
        .I4(\active_bit[1]_C_i_1_n_0 ),
        .I5(ss),
        .O(\rx_reg[15]_i_1__0_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[1] 
       (.CLR(rst),
        .D(rx_reg[1]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[2] 
       (.CLR(rst),
        .D(rx_reg[2]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[3] 
       (.CLR(rst),
        .D(rx_reg[3]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[4] 
       (.CLR(rst),
        .D(rx_reg[4]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[5] 
       (.CLR(rst),
        .D(rx_reg[5]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[6] 
       (.CLR(rst),
        .D(rx_reg[6]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[7] 
       (.CLR(rst),
        .D(rx_reg[7]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[8] 
       (.CLR(rst),
        .D(rx_reg[8]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_reg[9] 
       (.CLR(rst),
        .D(rx_reg[9]),
        .G(rx0),
        .GE(1'b1),
        .Q(rx[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[0] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(mosi),
        .Q(rx_reg[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[10] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[9]),
        .Q(rx_reg[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[11] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[10]),
        .Q(rx_reg[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[12] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[11]),
        .Q(rx_reg[12]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[13] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[12]),
        .Q(rx_reg[13]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[14] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[13]),
        .Q(rx_reg[14]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[15] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[14]),
        .Q(rx_reg[15]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[1] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[0]),
        .Q(rx_reg[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[2] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[1]),
        .Q(rx_reg[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[3] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[2]),
        .Q(rx_reg[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[4] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[3]),
        .Q(rx_reg[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[5] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[4]),
        .Q(rx_reg[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[6] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[5]),
        .Q(rx_reg[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[7] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[6]),
        .Q(rx_reg[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[8] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[7]),
        .Q(rx_reg[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \rx_reg_reg[9] 
       (.C(miso_i_2_n_0),
        .CE(\rx_reg[15]_i_1__0_n_0 ),
        .CLR(rst),
        .D(rx_reg[8]),
        .Q(rx_reg[9]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[10]_C_i_1 
       (.I0(\tx_reg_reg[9]_P_n_0 ),
        .I1(\tx_reg_reg[9]_LDC_n_0 ),
        .I2(\tx_reg_reg[9]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[10]_C_n_0 ),
        .O(\tx_reg[10]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[10]_P_i_1 
       (.I0(\tx_reg_reg[9]_P_n_0 ),
        .I1(\tx_reg_reg[9]_LDC_n_0 ),
        .I2(\tx_reg_reg[9]_C_n_0 ),
        .O(p_3_in[10]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[11]_C_i_1 
       (.I0(\tx_reg_reg[10]_P_n_0 ),
        .I1(\tx_reg_reg[10]_LDC_n_0 ),
        .I2(\tx_reg_reg[10]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[11]_C_n_0 ),
        .O(\tx_reg[11]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[11]_P_i_1 
       (.I0(\tx_reg_reg[10]_P_n_0 ),
        .I1(\tx_reg_reg[10]_LDC_n_0 ),
        .I2(\tx_reg_reg[10]_C_n_0 ),
        .O(p_3_in[11]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[12]_C_i_1 
       (.I0(\tx_reg_reg[11]_P_n_0 ),
        .I1(\tx_reg_reg[11]_LDC_n_0 ),
        .I2(\tx_reg_reg[11]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[12]_C_n_0 ),
        .O(\tx_reg[12]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[12]_P_i_1 
       (.I0(\tx_reg_reg[11]_P_n_0 ),
        .I1(\tx_reg_reg[11]_LDC_n_0 ),
        .I2(\tx_reg_reg[11]_C_n_0 ),
        .O(p_3_in[12]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[13]_C_i_1 
       (.I0(\tx_reg_reg[12]_P_n_0 ),
        .I1(\tx_reg_reg[12]_LDC_n_0 ),
        .I2(\tx_reg_reg[12]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[13]_C_n_0 ),
        .O(\tx_reg[13]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[13]_P_i_1 
       (.I0(\tx_reg_reg[12]_P_n_0 ),
        .I1(\tx_reg_reg[12]_LDC_n_0 ),
        .I2(\tx_reg_reg[12]_C_n_0 ),
        .O(p_3_in[13]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[14]_C_i_1 
       (.I0(\tx_reg_reg[13]_P_n_0 ),
        .I1(\tx_reg_reg[13]_LDC_n_0 ),
        .I2(\tx_reg_reg[13]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[14]_C_n_0 ),
        .O(\tx_reg[14]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[14]_P_i_1 
       (.I0(\tx_reg_reg[13]_P_n_0 ),
        .I1(\tx_reg_reg[13]_LDC_n_0 ),
        .I2(\tx_reg_reg[13]_C_n_0 ),
        .O(p_3_in[14]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[15]_C_i_1 
       (.I0(\tx_reg_reg[14]_P_n_0 ),
        .I1(\tx_reg_reg[14]_LDC_n_0 ),
        .I2(\tx_reg_reg[14]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[15]_C_n_0 ),
        .O(\tx_reg[15]_C_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tx_reg[15]_P_i_1 
       (.I0(\active_bit_reg_n_0_[16] ),
        .O(p_2_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[15]_P_i_2 
       (.I0(\tx_reg_reg[14]_P_n_0 ),
        .I1(\tx_reg_reg[14]_LDC_n_0 ),
        .I2(\tx_reg_reg[14]_C_n_0 ),
        .O(p_3_in[15]));
  LUT4 #(
    .INIT(16'hF808)) 
    \tx_reg[1]_C_i_1 
       (.I0(\tx_reg_reg[0]_LDC_n_0 ),
        .I1(\tx_reg_reg[0]_P_n_0 ),
        .I2(\active_bit_reg_n_0_[16] ),
        .I3(\tx_reg_reg[1]_C_n_0 ),
        .O(\tx_reg[1]_C_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tx_reg[1]_P_i_1 
       (.I0(\tx_reg_reg[0]_LDC_n_0 ),
        .I1(\tx_reg_reg[0]_P_n_0 ),
        .O(p_3_in[1]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[2]_C_i_1 
       (.I0(\tx_reg_reg[1]_P_n_0 ),
        .I1(\tx_reg_reg[1]_LDC_n_0 ),
        .I2(\tx_reg_reg[1]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[2]_C_n_0 ),
        .O(\tx_reg[2]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[2]_P_i_1 
       (.I0(\tx_reg_reg[1]_P_n_0 ),
        .I1(\tx_reg_reg[1]_LDC_n_0 ),
        .I2(\tx_reg_reg[1]_C_n_0 ),
        .O(p_3_in[2]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[3]_C_i_1 
       (.I0(\tx_reg_reg[2]_P_n_0 ),
        .I1(\tx_reg_reg[2]_LDC_n_0 ),
        .I2(\tx_reg_reg[2]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[3]_C_n_0 ),
        .O(\tx_reg[3]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[3]_P_i_1 
       (.I0(\tx_reg_reg[2]_P_n_0 ),
        .I1(\tx_reg_reg[2]_LDC_n_0 ),
        .I2(\tx_reg_reg[2]_C_n_0 ),
        .O(p_3_in[3]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[4]_C_i_1 
       (.I0(\tx_reg_reg[3]_P_n_0 ),
        .I1(\tx_reg_reg[3]_LDC_n_0 ),
        .I2(\tx_reg_reg[3]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[4]_C_n_0 ),
        .O(\tx_reg[4]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[4]_P_i_1 
       (.I0(\tx_reg_reg[3]_P_n_0 ),
        .I1(\tx_reg_reg[3]_LDC_n_0 ),
        .I2(\tx_reg_reg[3]_C_n_0 ),
        .O(p_3_in[4]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[5]_C_i_1 
       (.I0(\tx_reg_reg[4]_P_n_0 ),
        .I1(\tx_reg_reg[4]_LDC_n_0 ),
        .I2(\tx_reg_reg[4]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[5]_C_n_0 ),
        .O(\tx_reg[5]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[5]_P_i_1 
       (.I0(\tx_reg_reg[4]_P_n_0 ),
        .I1(\tx_reg_reg[4]_LDC_n_0 ),
        .I2(\tx_reg_reg[4]_C_n_0 ),
        .O(p_3_in[5]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[6]_C_i_1 
       (.I0(\tx_reg_reg[5]_P_n_0 ),
        .I1(\tx_reg_reg[5]_LDC_n_0 ),
        .I2(\tx_reg_reg[5]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[6]_C_n_0 ),
        .O(\tx_reg[6]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[6]_P_i_1 
       (.I0(\tx_reg_reg[5]_P_n_0 ),
        .I1(\tx_reg_reg[5]_LDC_n_0 ),
        .I2(\tx_reg_reg[5]_C_n_0 ),
        .O(p_3_in[6]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[7]_C_i_1 
       (.I0(\tx_reg_reg[6]_P_n_0 ),
        .I1(\tx_reg_reg[6]_LDC_n_0 ),
        .I2(\tx_reg_reg[6]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[7]_C_n_0 ),
        .O(\tx_reg[7]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[7]_P_i_1 
       (.I0(\tx_reg_reg[6]_P_n_0 ),
        .I1(\tx_reg_reg[6]_LDC_n_0 ),
        .I2(\tx_reg_reg[6]_C_n_0 ),
        .O(p_3_in[7]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[8]_C_i_1 
       (.I0(\tx_reg_reg[7]_P_n_0 ),
        .I1(\tx_reg_reg[7]_LDC_n_0 ),
        .I2(\tx_reg_reg[7]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[8]_C_n_0 ),
        .O(\tx_reg[8]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[8]_P_i_1 
       (.I0(\tx_reg_reg[7]_P_n_0 ),
        .I1(\tx_reg_reg[7]_LDC_n_0 ),
        .I2(\tx_reg_reg[7]_C_n_0 ),
        .O(p_3_in[8]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    \tx_reg[9]_C_i_1 
       (.I0(\tx_reg_reg[8]_P_n_0 ),
        .I1(\tx_reg_reg[8]_LDC_n_0 ),
        .I2(\tx_reg_reg[8]_C_n_0 ),
        .I3(\active_bit_reg_n_0_[16] ),
        .I4(\tx_reg_reg[9]_C_n_0 ),
        .O(\tx_reg[9]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_reg[9]_P_i_1 
       (.I0(\tx_reg_reg[8]_P_n_0 ),
        .I1(\tx_reg_reg[8]_LDC_n_0 ),
        .I2(\tx_reg_reg[8]_C_n_0 ),
        .O(p_3_in[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[0]_LDC 
       (.CLR(\tx_reg_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[0]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[0]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[0]),
        .O(\tx_reg_reg[0]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[0]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[0]),
        .O(\tx_reg_reg[0]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[0]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(1'b0),
        .PRE(\tx_reg_reg[0]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[0]_P_n_0 ));
  FDCE \tx_reg_reg[10]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[10]_LDC_i_2_n_0 ),
        .D(\tx_reg[10]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[10]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[10]_LDC 
       (.CLR(\tx_reg_reg[10]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[10]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[10]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[10]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[10]),
        .O(\tx_reg_reg[10]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[10]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[10]),
        .O(\tx_reg_reg[10]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[10]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[10]),
        .PRE(\tx_reg_reg[10]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[10]_P_n_0 ));
  FDCE \tx_reg_reg[11]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[11]_LDC_i_2_n_0 ),
        .D(\tx_reg[11]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[11]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[11]_LDC 
       (.CLR(\tx_reg_reg[11]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[11]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[11]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[11]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[11]),
        .O(\tx_reg_reg[11]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[11]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[11]),
        .O(\tx_reg_reg[11]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[11]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[11]),
        .PRE(\tx_reg_reg[11]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[11]_P_n_0 ));
  FDCE \tx_reg_reg[12]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[12]_LDC_i_2_n_0 ),
        .D(\tx_reg[12]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[12]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[12]_LDC 
       (.CLR(\tx_reg_reg[12]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[12]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[12]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[12]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[12]),
        .O(\tx_reg_reg[12]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[12]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[12]),
        .O(\tx_reg_reg[12]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[12]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[12]),
        .PRE(\tx_reg_reg[12]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[12]_P_n_0 ));
  FDCE \tx_reg_reg[13]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[13]_LDC_i_2_n_0 ),
        .D(\tx_reg[13]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[13]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[13]_LDC 
       (.CLR(\tx_reg_reg[13]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[13]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[13]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[13]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[13]),
        .O(\tx_reg_reg[13]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[13]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[13]),
        .O(\tx_reg_reg[13]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[13]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[13]),
        .PRE(\tx_reg_reg[13]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[13]_P_n_0 ));
  FDCE \tx_reg_reg[14]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[14]_LDC_i_2_n_0 ),
        .D(\tx_reg[14]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[14]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[14]_LDC 
       (.CLR(\tx_reg_reg[14]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[14]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[14]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[14]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[14]),
        .O(\tx_reg_reg[14]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[14]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[14]),
        .O(\tx_reg_reg[14]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[14]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[14]),
        .PRE(\tx_reg_reg[14]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[14]_P_n_0 ));
  FDCE \tx_reg_reg[15]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[15]_LDC_i_2_n_0 ),
        .D(\tx_reg[15]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[15]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[15]_LDC 
       (.CLR(\tx_reg_reg[15]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[15]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[15]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[15]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[15]),
        .O(\tx_reg_reg[15]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[15]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[15]),
        .O(\tx_reg_reg[15]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[15]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[15]),
        .PRE(\tx_reg_reg[15]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[15]_P_n_0 ));
  FDCE \tx_reg_reg[1]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[1]_LDC_i_2_n_0 ),
        .D(\tx_reg[1]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[1]_LDC 
       (.CLR(\tx_reg_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[1]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[1]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[1]),
        .O(\tx_reg_reg[1]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[1]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[1]),
        .O(\tx_reg_reg[1]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[1]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[1]),
        .PRE(\tx_reg_reg[1]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[1]_P_n_0 ));
  FDCE \tx_reg_reg[2]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[2]_LDC_i_2_n_0 ),
        .D(\tx_reg[2]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[2]_LDC 
       (.CLR(\tx_reg_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[2]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[2]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[2]),
        .O(\tx_reg_reg[2]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[2]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[2]),
        .O(\tx_reg_reg[2]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[2]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[2]),
        .PRE(\tx_reg_reg[2]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[2]_P_n_0 ));
  FDCE \tx_reg_reg[3]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[3]_LDC_i_2_n_0 ),
        .D(\tx_reg[3]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[3]_LDC 
       (.CLR(\tx_reg_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[3]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[3]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[3]),
        .O(\tx_reg_reg[3]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[3]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[3]),
        .O(\tx_reg_reg[3]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[3]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[3]),
        .PRE(\tx_reg_reg[3]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[3]_P_n_0 ));
  FDCE \tx_reg_reg[4]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[4]_LDC_i_2_n_0 ),
        .D(\tx_reg[4]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[4]_LDC 
       (.CLR(\tx_reg_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[4]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[4]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[4]),
        .O(\tx_reg_reg[4]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[4]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[4]),
        .O(\tx_reg_reg[4]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[4]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[4]),
        .PRE(\tx_reg_reg[4]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[4]_P_n_0 ));
  FDCE \tx_reg_reg[5]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[5]_LDC_i_2_n_0 ),
        .D(\tx_reg[5]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[5]_LDC 
       (.CLR(\tx_reg_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[5]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[5]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[5]),
        .O(\tx_reg_reg[5]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[5]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[5]),
        .O(\tx_reg_reg[5]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[5]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[5]),
        .PRE(\tx_reg_reg[5]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[5]_P_n_0 ));
  FDCE \tx_reg_reg[6]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[6]_LDC_i_2_n_0 ),
        .D(\tx_reg[6]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[6]_LDC 
       (.CLR(\tx_reg_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[6]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[6]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[6]),
        .O(\tx_reg_reg[6]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[6]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[6]),
        .O(\tx_reg_reg[6]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[6]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[6]),
        .PRE(\tx_reg_reg[6]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[6]_P_n_0 ));
  FDCE \tx_reg_reg[7]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[7]_LDC_i_2_n_0 ),
        .D(\tx_reg[7]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[7]_LDC 
       (.CLR(\tx_reg_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[7]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[7]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[7]),
        .O(\tx_reg_reg[7]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[7]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[7]),
        .O(\tx_reg_reg[7]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[7]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[7]),
        .PRE(\tx_reg_reg[7]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[7]_P_n_0 ));
  FDCE \tx_reg_reg[8]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[8]_LDC_i_2_n_0 ),
        .D(\tx_reg[8]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[8]_LDC 
       (.CLR(\tx_reg_reg[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[8]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[8]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[8]),
        .O(\tx_reg_reg[8]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[8]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[8]),
        .O(\tx_reg_reg[8]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[8]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[8]),
        .PRE(\tx_reg_reg[8]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[8]_P_n_0 ));
  FDCE \tx_reg_reg[9]_C 
       (.C(miso_i_2_n_0),
        .CE(1'b1),
        .CLR(\tx_reg_reg[9]_LDC_i_2_n_0 ),
        .D(\tx_reg[9]_C_i_1_n_0 ),
        .Q(\tx_reg_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \tx_reg_reg[9]_LDC 
       (.CLR(\tx_reg_reg[9]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\tx_reg_reg[9]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\tx_reg_reg[9]_LDC_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \tx_reg_reg[9]_LDC_i_1 
       (.I0(rst),
        .I1(ss),
        .I2(tx[9]),
        .O(\tx_reg_reg[9]_LDC_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    \tx_reg_reg[9]_LDC_i_2 
       (.I0(rst),
        .I1(ss),
        .I2(tx[9]),
        .O(\tx_reg_reg[9]_LDC_i_2_n_0 ));
  FDPE \tx_reg_reg[9]_P 
       (.C(miso_i_2_n_0),
        .CE(p_2_in),
        .D(p_3_in[9]),
        .PRE(\tx_reg_reg[9]_LDC_i_1_n_0 ),
        .Q(\tx_reg_reg[9]_P_n_0 ));
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
