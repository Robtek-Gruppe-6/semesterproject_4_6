// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed May  7 16:09:50 2025
// Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Motor_handler_inst_3/ip/FPGA_Motor_handler_inst_3_signed_to_absolute_i_0_0/FPGA_Motor_handler_inst_3_signed_to_absolute_i_0_0_stub.v
// Design      : FPGA_Motor_handler_inst_3_signed_to_absolute_i_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "FPGA_Motor_handler_inst_3_signed_to_absolute_i_0_0,signed_to_absolute_integer,{}" *) (* core_generation_info = "FPGA_Motor_handler_inst_3_signed_to_absolute_i_0_0,signed_to_absolute_integer,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=signed_to_absolute_integer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,n_bits=11}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "signed_to_absolute_integer,Vivado 2024.2" *) 
module FPGA_Motor_handler_inst_3_signed_to_absolute_i_0_0(clk, en, val, a_val, o_sign, rst)
/* synthesis syn_black_box black_box_pad_pin="en,val[10:0],a_val[9:0],o_sign,rst" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Main_task_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input en;
  input [10:0]val;
  output [9:0]a_val;
  output o_sign;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_mode = "slave rst" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
endmodule
