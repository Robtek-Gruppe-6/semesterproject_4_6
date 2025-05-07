-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:08:21 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_combiner_1_0/FPGA_Main_task_combiner_1_0_sim_netlist.vhdl
-- Design      : FPGA_Main_task_combiner_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Main_task_combiner_1_0 is
  port (
    h : in STD_LOGIC_VECTOR ( 0 to 0 );
    l : in STD_LOGIC_VECTOR ( 14 downto 0 );
    o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_Main_task_combiner_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Main_task_combiner_1_0 : entity is "FPGA_Main_task_combiner_1_0,combiner,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Main_task_combiner_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Main_task_combiner_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Main_task_combiner_1_0 : entity is "combiner,Vivado 2024.2";
end FPGA_Main_task_combiner_1_0;

architecture STRUCTURE of FPGA_Main_task_combiner_1_0 is
  signal \^h\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^l\ : STD_LOGIC_VECTOR ( 14 downto 0 );
begin
  \^h\(0) <= h(0);
  \^l\(14 downto 0) <= l(14 downto 0);
  o(15) <= \^h\(0);
  o(14 downto 0) <= \^l\(14 downto 0);
end STRUCTURE;
