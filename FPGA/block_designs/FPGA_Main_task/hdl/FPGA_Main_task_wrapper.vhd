--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Apr 23 10:28:58 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_Main_task_wrapper.bd
--Design      : FPGA_Main_task_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Main_task_wrapper is
  port (
    ck_miso : out STD_LOGIC;
    ck_mosi : in STD_LOGIC;
    ck_sck : in STD_LOGIC;
    clk : in STD_LOGIC;
    encoder_1a : in STD_LOGIC;
    encoder_1b : in STD_LOGIC;
    encoder_2a : in STD_LOGIC;
    encoder_2b : in STD_LOGIC;
    motor1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    motor2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    motor_en : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sw_0 : in STD_LOGIC;
    sw_1 : in STD_LOGIC
  );
end FPGA_Main_task_wrapper;

architecture STRUCTURE of FPGA_Main_task_wrapper is
  component FPGA_Main_task is
  port (
    clk : in STD_LOGIC;
    sw_1 : in STD_LOGIC;
    sw_0 : in STD_LOGIC;
    encoder_1a : in STD_LOGIC;
    encoder_1b : in STD_LOGIC;
    encoder_2a : in STD_LOGIC;
    encoder_2b : in STD_LOGIC;
    motor2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    motor1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    motor_en : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ck_mosi : in STD_LOGIC;
    ck_miso : out STD_LOGIC;
    ck_sck : in STD_LOGIC
  );
  end component FPGA_Main_task;
begin
FPGA_Main_task_i: component FPGA_Main_task
     port map (
      ck_miso => ck_miso,
      ck_mosi => ck_mosi,
      ck_sck => ck_sck,
      clk => clk,
      encoder_1a => encoder_1a,
      encoder_1b => encoder_1b,
      encoder_2a => encoder_2a,
      encoder_2b => encoder_2b,
      motor1(1 downto 0) => motor1(1 downto 0),
      motor2(1 downto 0) => motor2(1 downto 0),
      motor_en(1 downto 0) => motor_en(1 downto 0),
      sw_0 => sw_0,
      sw_1 => sw_1
    );
end STRUCTURE;
