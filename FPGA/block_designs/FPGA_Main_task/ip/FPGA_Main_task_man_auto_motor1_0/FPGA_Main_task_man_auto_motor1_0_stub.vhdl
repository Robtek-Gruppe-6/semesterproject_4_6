-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:09:48 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_man_auto_motor1_0/FPGA_Main_task_man_auto_motor1_0_stub.vhdl
-- Design      : FPGA_Main_task_man_auto_motor1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FPGA_Main_task_man_auto_motor1_0 is
  Port ( 
    input_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    input_2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Main_task_man_auto_motor1_0 : entity is "FPGA_Main_task_man_auto_motor1_0,busmux_2x1,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of FPGA_Main_task_man_auto_motor1_0 : entity is "FPGA_Main_task_man_auto_motor1_0,busmux_2x1,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=busmux_2x1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,BIT_WIDTH=11}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Main_task_man_auto_motor1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Main_task_man_auto_motor1_0 : entity is "module_ref";
end FPGA_Main_task_man_auto_motor1_0;

architecture stub of FPGA_Main_task_man_auto_motor1_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "input_1[10:0],input_2[10:0],s,o[10:0]";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "busmux_2x1,Vivado 2024.2";
begin
end;
