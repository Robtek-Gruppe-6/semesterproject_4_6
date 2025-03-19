--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Mar 19 10:47:24 2025
--Host        : EVlaptop running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    clk_0 : in STD_LOGIC;
    data_to_read_0 : in STD_LOGIC;
    en_0 : in STD_LOGIC;
    received_data_0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk_0 : in STD_LOGIC;
    data_to_read_0 : in STD_LOGIC;
    en_0 : in STD_LOGIC;
    received_data_0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      clk_0 => clk_0,
      data_to_read_0 => data_to_read_0,
      en_0 => en_0,
      received_data_0(7 downto 0) => received_data_0(7 downto 0)
    );
end STRUCTURE;
