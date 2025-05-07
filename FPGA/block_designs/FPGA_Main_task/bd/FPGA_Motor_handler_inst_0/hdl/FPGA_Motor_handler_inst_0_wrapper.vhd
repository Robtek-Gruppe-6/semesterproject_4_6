--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed May  7 17:27:20 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_Motor_handler_inst_0_wrapper.bd
--Design      : FPGA_Motor_handler_inst_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Motor_handler_inst_0_wrapper is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC
  );
end FPGA_Motor_handler_inst_0_wrapper;

architecture STRUCTURE of FPGA_Motor_handler_inst_0_wrapper is
  component FPGA_Motor_handler_inst_0 is
  port (
    i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    en : in STD_LOGIC
  );
  end component FPGA_Motor_handler_inst_0;
begin
FPGA_Motor_handler_inst_0_i: component FPGA_Motor_handler_inst_0
     port map (
      clk => clk,
      en => en,
      i(10 downto 0) => i(10 downto 0),
      o(1 downto 0) => o(1 downto 0),
      rst => rst
    );
end STRUCTURE;
