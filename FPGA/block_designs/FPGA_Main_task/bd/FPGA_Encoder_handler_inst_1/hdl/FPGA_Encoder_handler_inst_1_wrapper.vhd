--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed May  7 17:27:21 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_Encoder_handler_inst_1_wrapper.bd
--Design      : FPGA_Encoder_handler_inst_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Encoder_handler_inst_1_wrapper is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    max : out STD_LOGIC;
    position : out STD_LOGIC_VECTOR ( 14 downto 0 );
    rst : in STD_LOGIC
  );
end FPGA_Encoder_handler_inst_1_wrapper;

architecture STRUCTURE of FPGA_Encoder_handler_inst_1_wrapper is
  component FPGA_Encoder_handler_inst_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    position : out STD_LOGIC_VECTOR ( 14 downto 0 );
    max : out STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component FPGA_Encoder_handler_inst_1;
begin
FPGA_Encoder_handler_inst_1_i: component FPGA_Encoder_handler_inst_1
     port map (
      a => a,
      b => b,
      clk => clk,
      en => en,
      max => max,
      position(14 downto 0) => position(14 downto 0),
      rst => rst
    );
end STRUCTURE;
