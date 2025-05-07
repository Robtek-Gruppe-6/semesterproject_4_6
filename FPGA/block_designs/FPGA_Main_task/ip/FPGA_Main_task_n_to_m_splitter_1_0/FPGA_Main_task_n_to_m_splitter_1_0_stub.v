// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:08:22 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_n_to_m_splitter_1_0/FPGA_Main_task_n_to_m_splitter_1_0_stub.v
// Design      : FPGA_Main_task_n_to_m_splitter_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "FPGA_Main_task_n_to_m_splitter_1_0,n_to_m_splitter,{}" *) (* core_generation_info = "FPGA_Main_task_n_to_m_splitter_1_0,n_to_m_splitter,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=n_to_m_splitter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,input_size=16,output_size_high=1,output_size_low=11}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "n_to_m_splitter,Vivado 2024.2" *) 
module FPGA_Main_task_n_to_m_splitter_1_0(i, o_h, o_l)
/* synthesis syn_black_box black_box_pad_pin="i[15:0],o_h[0:0],o_l[10:0]" */;
  input [15:0]i;
  output [0:0]o_h;
  output [10:0]o_l;
endmodule
