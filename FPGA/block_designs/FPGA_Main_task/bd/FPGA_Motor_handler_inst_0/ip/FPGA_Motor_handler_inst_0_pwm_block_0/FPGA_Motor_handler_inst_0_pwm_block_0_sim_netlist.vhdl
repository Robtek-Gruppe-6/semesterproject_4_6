-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:09:50 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Motor_handler_inst_0/ip/FPGA_Motor_handler_inst_0_pwm_block_0/FPGA_Motor_handler_inst_0_pwm_block_0_sim_netlist.vhdl
-- Design      : FPGA_Motor_handler_inst_0_pwm_block_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Motor_handler_inst_0_pwm_block_0_pwm_block is
  port (
    pwm : out STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_Motor_handler_inst_0_pwm_block_0_pwm_block : entity is "pwm_block";
end FPGA_Motor_handler_inst_0_pwm_block_0_pwm_block;

architecture STRUCTURE of FPGA_Motor_handler_inst_0_pwm_block_0_pwm_block is
  signal \cnt_sig[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sig[9]_i_2_n_0\ : STD_LOGIC;
  signal cnt_sig_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal done_sig : STD_LOGIC;
  signal \done_sig__0\ : STD_LOGIC;
  signal done_sig_reg_i_2_n_0 : STD_LOGIC;
  signal done_sig_reg_i_3_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \pwm_sig0_carry__0_n_3\ : STD_LOGIC;
  signal \pwm_sig0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal pwm_sig0_carry_i_1_n_0 : STD_LOGIC;
  signal \pwm_sig0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal pwm_sig0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_sig0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_sig0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_sig0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_sig0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_sig0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_sig0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_sig0_carry_n_0 : STD_LOGIC;
  signal pwm_sig0_carry_n_1 : STD_LOGIC;
  signal pwm_sig0_carry_n_2 : STD_LOGIC;
  signal pwm_sig0_carry_n_3 : STD_LOGIC;
  signal NLW_pwm_sig0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_sig0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pwm_sig0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sig[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_sig[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_sig[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_sig[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_sig[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_sig[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_sig[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_sig[9]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of done_sig_reg : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of done_sig_reg : label is "VCC:GE";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm_sig0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_sig0_carry__0\ : label is 11;
begin
\cnt_sig[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sig_reg(0),
      O => \cnt_sig[0]_i_1_n_0\
    );
\cnt_sig[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_sig_reg(0),
      I1 => cnt_sig_reg(1),
      O => plusOp(1)
    );
\cnt_sig[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_sig_reg(0),
      I1 => cnt_sig_reg(1),
      I2 => cnt_sig_reg(2),
      O => plusOp(2)
    );
\cnt_sig[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_sig_reg(1),
      I1 => cnt_sig_reg(0),
      I2 => cnt_sig_reg(2),
      I3 => cnt_sig_reg(3),
      O => plusOp(3)
    );
\cnt_sig[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_sig_reg(2),
      I1 => cnt_sig_reg(0),
      I2 => cnt_sig_reg(1),
      I3 => cnt_sig_reg(3),
      I4 => cnt_sig_reg(4),
      O => plusOp(4)
    );
\cnt_sig[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cnt_sig_reg(3),
      I1 => cnt_sig_reg(1),
      I2 => cnt_sig_reg(0),
      I3 => cnt_sig_reg(2),
      I4 => cnt_sig_reg(4),
      I5 => cnt_sig_reg(5),
      O => plusOp(5)
    );
\cnt_sig[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_sig[9]_i_2_n_0\,
      I1 => cnt_sig_reg(6),
      O => plusOp(6)
    );
\cnt_sig[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_sig[9]_i_2_n_0\,
      I1 => cnt_sig_reg(6),
      I2 => cnt_sig_reg(7),
      O => plusOp(7)
    );
\cnt_sig[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_sig_reg(6),
      I1 => \cnt_sig[9]_i_2_n_0\,
      I2 => cnt_sig_reg(7),
      I3 => cnt_sig_reg(8),
      O => plusOp(8)
    );
\cnt_sig[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cnt_sig_reg(7),
      I1 => \cnt_sig[9]_i_2_n_0\,
      I2 => cnt_sig_reg(6),
      I3 => cnt_sig_reg(8),
      I4 => cnt_sig_reg(9),
      O => plusOp(9)
    );
\cnt_sig[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_sig_reg(5),
      I1 => cnt_sig_reg(3),
      I2 => cnt_sig_reg(1),
      I3 => cnt_sig_reg(0),
      I4 => cnt_sig_reg(2),
      I5 => cnt_sig_reg(4),
      O => \cnt_sig[9]_i_2_n_0\
    );
\cnt_sig_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => done_sig_reg_i_2_n_0,
      D => \cnt_sig[0]_i_1_n_0\,
      Q => cnt_sig_reg(0)
    );
\cnt_sig_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => done_sig_reg_i_2_n_0,
      D => plusOp(1),
      Q => cnt_sig_reg(1)
    );
\cnt_sig_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => done_sig_reg_i_2_n_0,
      D => plusOp(2),
      Q => cnt_sig_reg(2)
    );
\cnt_sig_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => done_sig_reg_i_2_n_0,
      D => plusOp(3),
      Q => cnt_sig_reg(3)
    );
\cnt_sig_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => done_sig_reg_i_2_n_0,
      D => plusOp(4),
      Q => cnt_sig_reg(4)
    );
\cnt_sig_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => done_sig_reg_i_2_n_0,
      D => plusOp(5),
      Q => cnt_sig_reg(5)
    );
\cnt_sig_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => done_sig_reg_i_2_n_0,
      D => plusOp(6),
      Q => cnt_sig_reg(6)
    );
\cnt_sig_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => done_sig_reg_i_2_n_0,
      D => plusOp(7),
      Q => cnt_sig_reg(7)
    );
\cnt_sig_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => done_sig_reg_i_2_n_0,
      D => plusOp(8),
      Q => cnt_sig_reg(8)
    );
\cnt_sig_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => done_sig_reg_i_2_n_0,
      D => plusOp(9),
      Q => cnt_sig_reg(9)
    );
done_sig_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => done_sig_reg_i_2_n_0,
      D => '1',
      G => \done_sig__0\,
      GE => '1',
      Q => done_sig
    );
done_sig_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt_sig_reg(9),
      I1 => cnt_sig_reg(7),
      I2 => cnt_sig_reg(8),
      I3 => cnt_sig_reg(6),
      I4 => done_sig_reg_i_3_n_0,
      O => \done_sig__0\
    );
done_sig_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => done_sig,
      O => done_sig_reg_i_2_n_0
    );
done_sig_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => cnt_sig_reg(0),
      I1 => cnt_sig_reg(1),
      I2 => cnt_sig_reg(2),
      I3 => cnt_sig_reg(3),
      I4 => cnt_sig_reg(5),
      I5 => cnt_sig_reg(4),
      O => done_sig_reg_i_3_n_0
    );
pwm_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \pwm_sig0_carry__0_n_3\,
      I1 => done_sig,
      I2 => rst,
      O => pwm
    );
pwm_sig0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_sig0_carry_n_0,
      CO(2) => pwm_sig0_carry_n_1,
      CO(1) => pwm_sig0_carry_n_2,
      CO(0) => pwm_sig0_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_sig0_carry_i_1_n_0,
      DI(2) => pwm_sig0_carry_i_2_n_0,
      DI(1) => pwm_sig0_carry_i_3_n_0,
      DI(0) => pwm_sig0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_sig0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_sig0_carry_i_5_n_0,
      S(2) => pwm_sig0_carry_i_6_n_0,
      S(1) => pwm_sig0_carry_i_7_n_0,
      S(0) => pwm_sig0_carry_i_8_n_0
    );
\pwm_sig0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_sig0_carry_n_0,
      CO(3 downto 1) => \NLW_pwm_sig0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \pwm_sig0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pwm_sig0_carry_i_1__0_n_0\,
      O(3 downto 0) => \NLW_pwm_sig0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \pwm_sig0_carry_i_2__0_n_0\
    );
pwm_sig0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle(6),
      I1 => cnt_sig_reg(6),
      I2 => cnt_sig_reg(7),
      I3 => duty_cycle(7),
      O => pwm_sig0_carry_i_1_n_0
    );
\pwm_sig0_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle(8),
      I1 => cnt_sig_reg(8),
      I2 => cnt_sig_reg(9),
      I3 => duty_cycle(9),
      O => \pwm_sig0_carry_i_1__0_n_0\
    );
pwm_sig0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle(4),
      I1 => cnt_sig_reg(4),
      I2 => cnt_sig_reg(5),
      I3 => duty_cycle(5),
      O => pwm_sig0_carry_i_2_n_0
    );
\pwm_sig0_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_cycle(8),
      I1 => cnt_sig_reg(8),
      I2 => duty_cycle(9),
      I3 => cnt_sig_reg(9),
      O => \pwm_sig0_carry_i_2__0_n_0\
    );
pwm_sig0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle(2),
      I1 => cnt_sig_reg(2),
      I2 => cnt_sig_reg(3),
      I3 => duty_cycle(3),
      O => pwm_sig0_carry_i_3_n_0
    );
pwm_sig0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_cycle(0),
      I1 => cnt_sig_reg(0),
      I2 => cnt_sig_reg(1),
      I3 => duty_cycle(1),
      O => pwm_sig0_carry_i_4_n_0
    );
pwm_sig0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_cycle(6),
      I1 => cnt_sig_reg(6),
      I2 => duty_cycle(7),
      I3 => cnt_sig_reg(7),
      O => pwm_sig0_carry_i_5_n_0
    );
pwm_sig0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_cycle(4),
      I1 => cnt_sig_reg(4),
      I2 => duty_cycle(5),
      I3 => cnt_sig_reg(5),
      O => pwm_sig0_carry_i_6_n_0
    );
pwm_sig0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_cycle(2),
      I1 => cnt_sig_reg(2),
      I2 => duty_cycle(3),
      I3 => cnt_sig_reg(3),
      O => pwm_sig0_carry_i_7_n_0
    );
pwm_sig0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_cycle(0),
      I1 => cnt_sig_reg(0),
      I2 => duty_cycle(1),
      I3 => cnt_sig_reg(1),
      O => pwm_sig0_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Motor_handler_inst_0_pwm_block_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC;
    pwm : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_Motor_handler_inst_0_pwm_block_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Motor_handler_inst_0_pwm_block_0 : entity is "FPGA_Motor_handler_inst_0_pwm_block_0,pwm_block,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Motor_handler_inst_0_pwm_block_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Motor_handler_inst_0_pwm_block_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Motor_handler_inst_0_pwm_block_0 : entity is "pwm_block,Vivado 2024.2";
end FPGA_Motor_handler_inst_0_pwm_block_0;

architecture STRUCTURE of FPGA_Motor_handler_inst_0_pwm_block_0 is
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
U0: entity work.FPGA_Motor_handler_inst_0_pwm_block_0_pwm_block
     port map (
      clk => clk,
      duty_cycle(9 downto 0) => duty_cycle(9 downto 0),
      en => en,
      pwm => pwm,
      rst => rst
    );
end STRUCTURE;
