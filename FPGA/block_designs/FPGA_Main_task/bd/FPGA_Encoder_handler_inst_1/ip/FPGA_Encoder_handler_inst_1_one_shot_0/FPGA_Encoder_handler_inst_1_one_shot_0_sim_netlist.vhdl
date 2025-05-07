-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:08:21 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Encoder_handler_inst_1/ip/FPGA_Encoder_handler_inst_1_one_shot_0/FPGA_Encoder_handler_inst_1_one_shot_0_sim_netlist.vhdl
-- Design      : FPGA_Encoder_handler_inst_1_one_shot_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Encoder_handler_inst_1_one_shot_0_one_shot is
  port (
    o : out STD_LOGIC;
    i : in STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_Encoder_handler_inst_1_one_shot_0_one_shot : entity is "one_shot";
end FPGA_Encoder_handler_inst_1_one_shot_0_one_shot;

architecture STRUCTURE of FPGA_Encoder_handler_inst_1_one_shot_0_one_shot is
  signal latch : STD_LOGIC;
  signal latch_i_1_n_0 : STD_LOGIC;
  signal \^o\ : STD_LOGIC;
  signal o_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of latch_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_i_1 : label is "soft_lutpair0";
begin
  o <= \^o\;
latch_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => latch,
      I1 => i,
      I2 => en,
      O => latch_i_1_n_0
    );
latch_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => latch_i_1_n_0,
      Q => latch,
      R => '0'
    );
o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => i,
      I1 => latch,
      I2 => en,
      I3 => \^o\,
      O => o_i_1_n_0
    );
o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => o_i_1_n_0,
      Q => \^o\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Encoder_handler_inst_1_one_shot_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_Encoder_handler_inst_1_one_shot_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Encoder_handler_inst_1_one_shot_0 : entity is "FPGA_Encoder_handler_inst_1_one_shot_0,one_shot,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Encoder_handler_inst_1_one_shot_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Encoder_handler_inst_1_one_shot_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Encoder_handler_inst_1_one_shot_0 : entity is "one_shot,Vivado 2024.2";
end FPGA_Encoder_handler_inst_1_one_shot_0;

architecture STRUCTURE of FPGA_Encoder_handler_inst_1_one_shot_0 is
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
U0: entity work.FPGA_Encoder_handler_inst_1_one_shot_0_one_shot
     port map (
      clk => clk,
      en => en,
      i => i,
      o => o
    );
end STRUCTURE;
