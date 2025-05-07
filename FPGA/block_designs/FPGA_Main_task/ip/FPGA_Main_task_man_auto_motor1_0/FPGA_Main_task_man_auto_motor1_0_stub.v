// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:09:48 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_man_auto_motor1_0/FPGA_Main_task_man_auto_motor1_0_stub.v
// Design      : FPGA_Main_task_man_auto_motor1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "FPGA_Main_task_man_auto_motor1_0,busmux_2x1,{}" *) (* core_generation_info = "FPGA_Main_task_man_auto_motor1_0,busmux_2x1,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=busmux_2x1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,BIT_WIDTH=11}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "busmux_2x1,Vivado 2024.2" *) 
module FPGA_Main_task_man_auto_motor1_0(input_1, input_2, s, o)
/* synthesis syn_black_box black_box_pad_pin="input_1[10:0],input_2[10:0],s,o[10:0]" */;
  input [10:0]input_1;
  input [10:0]input_2;
  input s;
  output [10:0]o;
endmodule
