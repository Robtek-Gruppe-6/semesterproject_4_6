--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Apr  9 13:10:58 2025
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
  port (
    SPI_rx : in STD_LOGIC;
    SPI_tx : out STD_LOGIC;
    clk : in STD_LOGIC;
    data_to_send : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    latch : in STD_LOGIC;
    motor_1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    motor_2 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rst : in STD_LOGIC
  );
end FPGA_SPI_Handler_wrapper;

architecture STRUCTURE of FPGA_SPI_Handler_wrapper is
  component FPGA_SPI_Handler is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    SPI_tx : out STD_LOGIC;
    SPI_rx : in STD_LOGIC;
    motor_1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    motor_2 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    latch : in STD_LOGIC;
    data_to_send : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component FPGA_SPI_Handler;
begin
FPGA_SPI_Handler_i: component FPGA_SPI_Handler
     port map (
      SPI_rx => SPI_rx,
      SPI_tx => SPI_tx,
      clk => clk,
      data_to_send(15 downto 0) => data_to_send(15 downto 0),
      en => en,
      latch => latch,
      motor_1(10 downto 0) => motor_1(10 downto 0),
      motor_2(10 downto 0) => motor_2(10 downto 0),
      rst => rst
    );
end STRUCTURE;
