--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Mar 19 13:25:03 2025
--Host        : Lil_spkkis_pad running 64-bit major release  (build 9200)
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
    vel_0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end design_motor_encoders_wrapper;

architecture STRUCTURE of design_motor_encoders_wrapper is
  component design_motor_encoders is
  port (
    b_0 : in STD_LOGIC;
    a_0 : in STD_LOGIC;
    vel_0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_motor_encoders;
begin
design_motor_encoders_i: component design_motor_encoders
     port map (
      a_0 => a_0,
      b_0 => b_0,
      vel_0(15 downto 0) => vel_0(15 downto 0)
    );
end STRUCTURE;
