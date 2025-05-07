// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:08:22 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_SPI_slave_block_0_1/FPGA_Main_task_SPI_slave_block_0_1_stub.v
// Design      : FPGA_Main_task_SPI_slave_block_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "FPGA_Main_task_SPI_slave_block_0_1,SPI_slave_block,{}" *) (* core_generation_info = "FPGA_Main_task_SPI_slave_block_0_1,SPI_slave_block,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SPI_slave_block,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,BUS_WIDTH=16}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "SPI_slave_block,Vivado 2024.2" *) 
module FPGA_Main_task_SPI_slave_block_0_1(cpol, cpha, sck, ss, mosi, miso, read_en, tx, rx, busy, rst)
/* synthesis syn_black_box black_box_pad_pin="cpol,cpha,sck,ss,mosi,miso,read_en,tx[15:0],rx[15:0],busy,rst" */;
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
endmodule
