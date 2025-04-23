// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Apr 23 11:13:02 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_busdmux_0_0/FPGA_SPI_Handler_busdmux_0_0_stub.v
// Design      : FPGA_SPI_Handler_busdmux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "FPGA_SPI_Handler_busdmux_0_0,busdmux,{}" *) (* core_generation_info = "FPGA_SPI_Handler_busdmux_0_0,busdmux,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=busdmux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,BUS_WIDTH=11}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "busdmux,Vivado 2024.2" *) 
module FPGA_SPI_Handler_busdmux_0_0(data_in, sel, data_out_1, data_out_2)
/* synthesis syn_black_box black_box_pad_pin="data_in[10:0],sel[0:0],data_out_1[10:0],data_out_2[10:0]" */;
  input [10:0]data_in;
  input [0:0]sel;
  output [10:0]data_out_1;
  output [10:0]data_out_2;
endmodule
