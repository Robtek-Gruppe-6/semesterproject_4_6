-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Apr 23 11:13:02 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_dlatch_0_0/FPGA_SPI_Handler_dlatch_0_0_sim_netlist.vhdl
-- Design      : FPGA_SPI_Handler_dlatch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_dlatch_0_0_dlatch is
  port (
    o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_SPI_Handler_dlatch_0_0_dlatch : entity is "dlatch";
end FPGA_SPI_Handler_dlatch_0_0_dlatch;

architecture STRUCTURE of FPGA_SPI_Handler_dlatch_0_0_dlatch is
begin
\o_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(0),
      Q => o(0)
    );
\o_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(10),
      Q => o(10)
    );
\o_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(11),
      Q => o(11)
    );
\o_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(12),
      Q => o(12)
    );
\o_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(13),
      Q => o(13)
    );
\o_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(14),
      Q => o(14)
    );
\o_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(15),
      Q => o(15)
    );
\o_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(1),
      Q => o(1)
    );
\o_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(2),
      Q => o(2)
    );
\o_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(3),
      Q => o(3)
    );
\o_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(4),
      Q => o(4)
    );
\o_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(5),
      Q => o(5)
    );
\o_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(6),
      Q => o(6)
    );
\o_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(7),
      Q => o(7)
    );
\o_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(8),
      Q => o(8)
    );
\o_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => i(9),
      Q => o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_dlatch_0_0 is
  port (
    clk : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_SPI_Handler_dlatch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_SPI_Handler_dlatch_0_0 : entity is "FPGA_SPI_Handler_dlatch_0_0,dlatch,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_SPI_Handler_dlatch_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_SPI_Handler_dlatch_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_SPI_Handler_dlatch_0_0 : entity is "dlatch,Vivado 2024.2";
end FPGA_SPI_Handler_dlatch_0_0;

architecture STRUCTURE of FPGA_SPI_Handler_dlatch_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_SPI_Handler_clk_0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.FPGA_SPI_Handler_dlatch_0_0_dlatch
     port map (
      clk => clk,
      en => en,
      i(15 downto 0) => i(15 downto 0),
      o(15 downto 0) => o(15 downto 0),
      rst => rst
    );
end STRUCTURE;
