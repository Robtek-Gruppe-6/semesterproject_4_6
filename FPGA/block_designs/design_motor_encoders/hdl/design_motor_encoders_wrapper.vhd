--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Mar 26 15:23:46 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
--Command     : generate_target design_motor_encoders_wrapper.bd
--Design      : design_motor_encoders_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_motor_encoders_wrapper is
  port (
    a_0 : in STD_LOGIC;
    b_0 : in STD_LOGIC;
    clk_0 : in STD_LOGIC;
    cnt_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    done_0 : out STD_LOGIC;
    en_0 : in STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
end design_motor_encoders_wrapper;

architecture STRUCTURE of design_motor_encoders_wrapper is
  component design_motor_encoders is
  port (
    a_0 : in STD_LOGIC;
    b_0 : in STD_LOGIC;
    cnt_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    done_0 : out STD_LOGIC;
    en_0 : in STD_LOGIC;
    clk_0 : in STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
  end component design_motor_encoders;
begin
design_motor_encoders_i: component design_motor_encoders
     port map (
      a_0 => a_0,
      b_0 => b_0,
      clk_0 => clk_0,
      cnt_0(15 downto 0) => cnt_0(15 downto 0),
      done_0 => done_0,
      en_0 => en_0,
      rst_0 => rst_0
    );
end STRUCTURE;
