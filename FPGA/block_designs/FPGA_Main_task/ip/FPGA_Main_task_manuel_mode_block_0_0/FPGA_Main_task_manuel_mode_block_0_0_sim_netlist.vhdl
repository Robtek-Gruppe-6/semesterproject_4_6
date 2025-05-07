-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 17:28:49 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_manuel_mode_block_0_0/FPGA_Main_task_manuel_mode_block_0_0_sim_netlist.vhdl
-- Design      : FPGA_Main_task_manuel_mode_block_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Main_task_manuel_mode_block_0_0_manuel_mode_block is
  port (
    motor1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    motor2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_Main_task_manuel_mode_block_0_0_manuel_mode_block : entity is "manuel_mode_block";
end FPGA_Main_task_manuel_mode_block_0_0_manuel_mode_block;

architecture STRUCTURE of FPGA_Main_task_manuel_mode_block_0_0_manuel_mode_block is
  signal \motor1[10]_i_1_n_0\ : STD_LOGIC;
  signal \motor1[5]_i_1_n_0\ : STD_LOGIC;
  signal \motor1[7]_i_1_n_0\ : STD_LOGIC;
  signal \motor2[10]_i_1_n_0\ : STD_LOGIC;
  signal \motor2[5]_i_1_n_0\ : STD_LOGIC;
  signal \motor2[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \motor1[10]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \motor1[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \motor1[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \motor2[10]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \motor2[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \motor2[7]_i_1\ : label is "soft_lutpair1";
begin
\motor1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => btn(1),
      I1 => btn(0),
      I2 => en,
      O => \motor1[10]_i_1_n_0\
    );
\motor1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => btn(1),
      I1 => en,
      O => \motor1[5]_i_1_n_0\
    );
\motor1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => en,
      I1 => btn(1),
      I2 => btn(0),
      O => \motor1[7]_i_1_n_0\
    );
\motor1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \motor1[10]_i_1_n_0\,
      Q => motor1(2)
    );
\motor1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \motor1[5]_i_1_n_0\,
      Q => motor1(0)
    );
\motor1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \motor1[7]_i_1_n_0\,
      Q => motor1(1)
    );
\motor2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => btn(3),
      I1 => btn(2),
      I2 => en,
      O => \motor2[10]_i_1_n_0\
    );
\motor2[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => btn(3),
      I1 => en,
      O => \motor2[5]_i_1_n_0\
    );
\motor2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => en,
      I1 => btn(3),
      I2 => btn(2),
      O => \motor2[7]_i_1_n_0\
    );
\motor2_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \motor2[10]_i_1_n_0\,
      Q => motor2(2)
    );
\motor2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \motor2[5]_i_1_n_0\,
      Q => motor2(0)
    );
\motor2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \motor2[7]_i_1_n_0\,
      Q => motor2(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Main_task_manuel_mode_block_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    motor1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    motor2 : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_Main_task_manuel_mode_block_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Main_task_manuel_mode_block_0_0 : entity is "FPGA_Main_task_manuel_mode_block_0_0,manuel_mode_block,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Main_task_manuel_mode_block_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Main_task_manuel_mode_block_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Main_task_manuel_mode_block_0_0 : entity is "manuel_mode_block,Vivado 2024.2";
end FPGA_Main_task_manuel_mode_block_0_0;

architecture STRUCTURE of FPGA_Main_task_manuel_mode_block_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^motor1\ : STD_LOGIC_VECTOR ( 10 downto 4 );
  signal \^motor2\ : STD_LOGIC_VECTOR ( 10 downto 4 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  motor1(10) <= \^motor1\(10);
  motor1(9) <= \<const0>\;
  motor1(8) <= \<const0>\;
  motor1(7) <= \^motor1\(6);
  motor1(6) <= \^motor1\(6);
  motor1(5) <= \^motor1\(4);
  motor1(4) <= \^motor1\(4);
  motor1(3) <= \^motor1\(6);
  motor1(2) <= \<const0>\;
  motor1(1) <= \<const0>\;
  motor1(0) <= \<const0>\;
  motor2(10) <= \^motor2\(10);
  motor2(9) <= \<const0>\;
  motor2(8) <= \<const0>\;
  motor2(7) <= \^motor2\(6);
  motor2(6) <= \^motor2\(6);
  motor2(5) <= \^motor2\(4);
  motor2(4) <= \^motor2\(4);
  motor2(3) <= \^motor2\(6);
  motor2(2) <= \<const0>\;
  motor2(1) <= \<const0>\;
  motor2(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.FPGA_Main_task_manuel_mode_block_0_0_manuel_mode_block
     port map (
      btn(3 downto 0) => btn(3 downto 0),
      clk => clk,
      en => en,
      motor1(2) => \^motor1\(10),
      motor1(1) => \^motor1\(6),
      motor1(0) => \^motor1\(4),
      motor2(2) => \^motor2\(10),
      motor2(1) => \^motor2\(6),
      motor2(0) => \^motor2\(4),
      rst => rst
    );
end STRUCTURE;
