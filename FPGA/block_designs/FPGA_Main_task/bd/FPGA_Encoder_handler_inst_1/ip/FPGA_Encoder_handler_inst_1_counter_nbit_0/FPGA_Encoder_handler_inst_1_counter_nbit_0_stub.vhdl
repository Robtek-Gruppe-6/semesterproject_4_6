-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:08:22 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Encoder_handler_inst_1/ip/FPGA_Encoder_handler_inst_1_counter_nbit_0/FPGA_Encoder_handler_inst_1_counter_nbit_0_stub.vhdl
-- Design      : FPGA_Encoder_handler_inst_1_counter_nbit_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FPGA_Encoder_handler_inst_1_counter_nbit_0 is
  Port ( 
    cnt : out STD_LOGIC_VECTOR ( 14 downto 0 );
    done : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    dir : in STD_LOGIC;
    rst : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Encoder_handler_inst_1_counter_nbit_0 : entity is "FPGA_Encoder_handler_inst_1_counter_nbit_0,counter_nbit,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of FPGA_Encoder_handler_inst_1_counter_nbit_0 : entity is "FPGA_Encoder_handler_inst_1_counter_nbit_0,counter_nbit,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=counter_nbit,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,max_cnt=32767,n_bits=15}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Encoder_handler_inst_1_counter_nbit_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Encoder_handler_inst_1_counter_nbit_0 : entity is "module_ref";
end FPGA_Encoder_handler_inst_1_counter_nbit_0;

architecture stub of FPGA_Encoder_handler_inst_1_counter_nbit_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "cnt[14:0],done,clk,en,dir,rst";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Encoder_handler_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "counter_nbit,Vivado 2024.2";
begin
end;
