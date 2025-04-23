-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Apr 23 11:13:01 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_combiner_0_0/FPGA_SPI_Handler_combiner_0_0_stub.vhdl
-- Design      : FPGA_SPI_Handler_combiner_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FPGA_SPI_Handler_combiner_0_0 is
  Port ( 
    h : in STD_LOGIC_VECTOR ( 0 to 0 );
    l : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_SPI_Handler_combiner_0_0 : entity is "FPGA_SPI_Handler_combiner_0_0,combiner,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of FPGA_SPI_Handler_combiner_0_0 : entity is "FPGA_SPI_Handler_combiner_0_0,combiner,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=combiner,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,lowbits=16,highbits=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_SPI_Handler_combiner_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_SPI_Handler_combiner_0_0 : entity is "module_ref";
end FPGA_SPI_Handler_combiner_0_0;

architecture stub of FPGA_SPI_Handler_combiner_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "h[0:0],l[15:0],o[16:0]";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "combiner,Vivado 2024.2";
begin
end;
