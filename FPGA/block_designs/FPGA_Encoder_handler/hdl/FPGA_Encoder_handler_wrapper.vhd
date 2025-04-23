--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Apr 23 19:02:28 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_Encoder_handler_wrapper.bd
--Design      : FPGA_Encoder_handler_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Encoder_handler_wrapper is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    max : out STD_LOGIC;
    position : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC
  );
end FPGA_Encoder_handler_wrapper;

architecture STRUCTURE of FPGA_Encoder_handler_wrapper is
  component FPGA_Encoder_handler is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    position : out STD_LOGIC_VECTOR ( 15 downto 0 );
    max : out STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component FPGA_Encoder_handler;
begin
FPGA_Encoder_handler_i: component FPGA_Encoder_handler
     port map (
      a => a,
      b => b,
      clk => clk,
      en => en,
      max => max,
      position(15 downto 0) => position(15 downto 0),
      rst => rst
    );
end STRUCTURE;
