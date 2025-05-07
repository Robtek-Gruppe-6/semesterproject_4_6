-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:09:48 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Motor_handler_inst_3/ip/FPGA_Motor_handler_inst_3_dmux_1xn_0_0/FPGA_Motor_handler_inst_3_dmux_1xn_0_0_sim_netlist.vhdl
-- Design      : FPGA_Motor_handler_inst_3_dmux_1xn_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Motor_handler_inst_3_dmux_1xn_0_0_dmux_1xn is
  port (
    o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    i : in STD_LOGIC;
    sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_Motor_handler_inst_3_dmux_1xn_0_0_dmux_1xn : entity is "dmux_1xn";
end FPGA_Motor_handler_inst_3_dmux_1xn_0_0_dmux_1xn;

architecture STRUCTURE of FPGA_Motor_handler_inst_3_dmux_1xn_0_0_dmux_1xn is
  signal \o_sig[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_sig[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_sig[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_sig[1]_i_1\ : label is "soft_lutpair0";
begin
\o_sig[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i,
      I1 => sel(0),
      O => \o_sig[0]_i_1_n_0\
    );
\o_sig[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i,
      I1 => sel(0),
      O => \o_sig[1]_i_1_n_0\
    );
\o_sig_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \o_sig[0]_i_1_n_0\,
      Q => o(0)
    );
\o_sig_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \o_sig[1]_i_1_n_0\,
      Q => o(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Motor_handler_inst_3_dmux_1xn_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC;
    sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_Motor_handler_inst_3_dmux_1xn_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Motor_handler_inst_3_dmux_1xn_0_0 : entity is "FPGA_Motor_handler_inst_3_dmux_1xn_0_0,dmux_1xn,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Motor_handler_inst_3_dmux_1xn_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Motor_handler_inst_3_dmux_1xn_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Motor_handler_inst_3_dmux_1xn_0_0 : entity is "dmux_1xn,Vivado 2024.2";
end FPGA_Motor_handler_inst_3_dmux_1xn_0_0;

architecture STRUCTURE of FPGA_Motor_handler_inst_3_dmux_1xn_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Main_task_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.FPGA_Motor_handler_inst_3_dmux_1xn_0_0_dmux_1xn
     port map (
      clk => clk,
      en => en,
      i => i,
      o(1 downto 0) => o(1 downto 0),
      rst => rst,
      sel(0) => sel(0)
    );
end STRUCTURE;
