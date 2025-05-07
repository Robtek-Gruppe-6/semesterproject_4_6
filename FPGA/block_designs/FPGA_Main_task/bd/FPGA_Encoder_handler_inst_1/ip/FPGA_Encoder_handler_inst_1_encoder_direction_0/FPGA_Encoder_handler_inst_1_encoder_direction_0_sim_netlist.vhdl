-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:08:21 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Encoder_handler_inst_1/ip/FPGA_Encoder_handler_inst_1_encoder_direction_0/FPGA_Encoder_handler_inst_1_encoder_direction_0_sim_netlist.vhdl
-- Design      : FPGA_Encoder_handler_inst_1_encoder_direction_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Encoder_handler_inst_1_encoder_direction_0_encoder_direction is
  port (
    pulse : out STD_LOGIC;
    dir : out STD_LOGIC;
    a : in STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    b : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_Encoder_handler_inst_1_encoder_direction_0_encoder_direction : entity is "encoder_direction";
end FPGA_Encoder_handler_inst_1_encoder_direction_0_encoder_direction;

architecture STRUCTURE of FPGA_Encoder_handler_inst_1_encoder_direction_0_encoder_direction is
  signal \^dir\ : STD_LOGIC;
  signal dir_i_1_n_0 : STD_LOGIC;
  signal latch_a : STD_LOGIC;
  signal latch_a_i_1_n_0 : STD_LOGIC;
  signal latch_a_i_2_n_0 : STD_LOGIC;
  signal latch_b : STD_LOGIC;
  signal latch_b_i_1_n_0 : STD_LOGIC;
  signal latch_b_i_2_n_0 : STD_LOGIC;
  signal \^pulse\ : STD_LOGIC;
  signal pulse_sig_i_1_n_0 : STD_LOGIC;
begin
  dir <= \^dir\;
  pulse <= \^pulse\;
dir_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77FFFF08000000"
    )
        port map (
      I0 => en,
      I1 => a,
      I2 => latch_b,
      I3 => latch_a,
      I4 => b,
      I5 => \^dir\,
      O => dir_i_1_n_0
    );
dir_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => dir_i_1_n_0,
      Q => \^dir\
    );
latch_a_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => en,
      I1 => latch_b,
      I2 => a,
      I3 => latch_a,
      O => latch_a_i_1_n_0
    );
latch_a_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a,
      O => latch_a_i_2_n_0
    );
latch_a_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => latch_a_i_2_n_0,
      D => latch_a_i_1_n_0,
      Q => latch_a
    );
latch_b_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => en,
      I1 => latch_a,
      I2 => b,
      I3 => latch_b,
      O => latch_b_i_1_n_0
    );
latch_b_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b,
      O => latch_b_i_2_n_0
    );
latch_b_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => latch_b_i_2_n_0,
      D => latch_b_i_1_n_0,
      Q => latch_b
    );
pulse_sig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4E44EE4444444444"
    )
        port map (
      I0 => en,
      I1 => \^pulse\,
      I2 => latch_b,
      I3 => a,
      I4 => latch_a,
      I5 => b,
      O => pulse_sig_i_1_n_0
    );
pulse_sig_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => pulse_sig_i_1_n_0,
      Q => \^pulse\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Encoder_handler_inst_1_encoder_direction_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    rst : in STD_LOGIC;
    pulse : out STD_LOGIC;
    dir : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_Encoder_handler_inst_1_encoder_direction_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Encoder_handler_inst_1_encoder_direction_0 : entity is "FPGA_Encoder_handler_inst_1_encoder_direction_0,encoder_direction,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Encoder_handler_inst_1_encoder_direction_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Encoder_handler_inst_1_encoder_direction_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Encoder_handler_inst_1_encoder_direction_0 : entity is "encoder_direction,Vivado 2024.2";
end FPGA_Encoder_handler_inst_1_encoder_direction_0;

architecture STRUCTURE of FPGA_Encoder_handler_inst_1_encoder_direction_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Encoder_handler_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.FPGA_Encoder_handler_inst_1_encoder_direction_0_encoder_direction
     port map (
      a => a,
      b => b,
      clk => clk,
      dir => dir,
      en => en,
      pulse => pulse,
      rst => rst
    );
end STRUCTURE;
