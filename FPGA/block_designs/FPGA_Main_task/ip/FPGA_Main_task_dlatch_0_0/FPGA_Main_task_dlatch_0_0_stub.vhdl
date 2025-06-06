-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:08:22 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_dlatch_0_0/FPGA_Main_task_dlatch_0_0_stub.vhdl
-- Design      : FPGA_Main_task_dlatch_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FPGA_Main_task_dlatch_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 14 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Main_task_dlatch_0_0 : entity is "FPGA_Main_task_dlatch_0_0,dlatch,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of FPGA_Main_task_dlatch_0_0 : entity is "FPGA_Main_task_dlatch_0_0,dlatch,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=dlatch,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,WIDTH=15}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Main_task_dlatch_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Main_task_dlatch_0_0 : entity is "module_ref";
end FPGA_Main_task_dlatch_0_0;

architecture stub of FPGA_Main_task_dlatch_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,i[14:0],en,rst,o[14:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "dlatch,Vivado 2024.2";
begin
end;
