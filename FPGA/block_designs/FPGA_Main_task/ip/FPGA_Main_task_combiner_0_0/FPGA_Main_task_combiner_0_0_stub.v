// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:08:21 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_combiner_0_0/FPGA_Main_task_combiner_0_0_stub.v
// Design      : FPGA_Main_task_combiner_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "FPGA_Main_task_combiner_0_0,combiner,{}" *) (* core_generation_info = "FPGA_Main_task_combiner_0_0,combiner,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=combiner,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,lowbits=1,highbits=1}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "combiner,Vivado 2024.2" *) 
module FPGA_Main_task_combiner_0_0(h, l, o)
/* synthesis syn_black_box black_box_pad_pin="h[0:0],l[0:0],o[1:0]" */;
  input [0:0]h;
  input [0:0]l;
  output [1:0]o;
endmodule
