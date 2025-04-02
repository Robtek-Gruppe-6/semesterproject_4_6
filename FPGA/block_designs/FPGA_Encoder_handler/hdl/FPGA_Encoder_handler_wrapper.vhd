--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Apr  2 10:10:57 2025
--Host        : Lil_spkkis_pad running 64-bit major release  (build 9200)
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
    a_0 : in STD_LOGIC;
    b_0 : in STD_LOGIC;
    clk_0 : in STD_LOGIC;
    cnt_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    done_0 : out STD_LOGIC;
    en_0 : in STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
end FPGA_Encoder_handler_wrapper;

architecture STRUCTURE of FPGA_Encoder_handler_wrapper is
  component FPGA_Encoder_handler is
  port (
    a_0 : in STD_LOGIC;
    b_0 : in STD_LOGIC;
    clk_0 : in STD_LOGIC;
    cnt_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    done_0 : out STD_LOGIC;
    en_0 : in STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
  end component FPGA_Encoder_handler;
begin
FPGA_Encoder_handler_i: component FPGA_Encoder_handler
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
