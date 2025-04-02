--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Apr  2 14:34:29 2025
--Host        : Lil_spkkis_pad running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_SPI_Handler_wrapper.bd
--Design      : FPGA_SPI_Handler_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_wrapper is
end FPGA_SPI_Handler_wrapper;

architecture STRUCTURE of FPGA_SPI_Handler_wrapper is
  component FPGA_SPI_Handler is
  end component FPGA_SPI_Handler;
begin
FPGA_SPI_Handler_i: component FPGA_SPI_Handler
 ;
end STRUCTURE;
