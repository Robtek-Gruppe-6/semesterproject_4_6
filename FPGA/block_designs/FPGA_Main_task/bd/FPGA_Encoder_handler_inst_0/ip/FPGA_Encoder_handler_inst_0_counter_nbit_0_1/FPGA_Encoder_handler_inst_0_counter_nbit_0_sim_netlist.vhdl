-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:08:22 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Encoder_handler_inst_0/ip/FPGA_Encoder_handler_inst_0_counter_nbit_0_1/FPGA_Encoder_handler_inst_0_counter_nbit_0_sim_netlist.vhdl
-- Design      : FPGA_Encoder_handler_inst_0_counter_nbit_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Encoder_handler_inst_0_counter_nbit_0_counter_nbit is
  port (
    cnt : out STD_LOGIC_VECTOR ( 14 downto 0 );
    done : out STD_LOGIC;
    dir : in STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_Encoder_handler_inst_0_counter_nbit_0_counter_nbit : entity is "counter_nbit";
end FPGA_Encoder_handler_inst_0_counter_nbit_0_counter_nbit;

architecture STRUCTURE of FPGA_Encoder_handler_inst_0_counter_nbit_0_counter_nbit is
  signal \^cnt\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal cnt_sig : STD_LOGIC;
  signal \cnt_sig[11]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sig[11]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sig[11]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sig[11]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sig[11]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sig[11]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_sig[11]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_sig[11]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_sig[14]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sig[14]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sig[14]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sig[14]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sig[14]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_sig[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sig[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sig[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sig[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sig[3]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sig[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_sig[3]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_sig[3]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_sig[7]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sig[7]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sig[7]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sig[7]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sig[7]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sig[7]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_sig[7]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_sig[7]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_sig_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sig_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sig_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sig_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sig_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sig_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sig_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sig_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_sig_reg[14]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_sig_reg[14]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_sig_reg[14]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_sig_reg[14]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_sig_reg[14]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_sig_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sig_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sig_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sig_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sig_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sig_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sig_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sig_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_sig_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sig_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sig_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sig_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sig_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sig_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sig_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sig_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal done_sig_i_1_n_0 : STD_LOGIC;
  signal done_sig_i_2_n_0 : STD_LOGIC;
  signal done_sig_i_3_n_0 : STD_LOGIC;
  signal done_sig_i_4_n_0 : STD_LOGIC;
  signal \NLW_cnt_sig_reg[14]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sig_reg[14]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_sig_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sig_reg[14]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sig_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sig_reg[7]_i_1\ : label is 11;
begin
  cnt(14 downto 0) <= \^cnt\(14 downto 0);
  done <= \^done\;
\cnt_sig[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[11]_i_2_n_0\
    );
\cnt_sig[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[11]_i_3_n_0\
    );
\cnt_sig[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[11]_i_4_n_0\
    );
\cnt_sig[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[11]_i_5_n_0\
    );
\cnt_sig[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(11),
      O => \cnt_sig[11]_i_6_n_0\
    );
\cnt_sig[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(10),
      O => \cnt_sig[11]_i_7_n_0\
    );
\cnt_sig[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(9),
      O => \cnt_sig[11]_i_8_n_0\
    );
\cnt_sig[11]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(8),
      O => \cnt_sig[11]_i_9_n_0\
    );
\cnt_sig[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst,
      I1 => en,
      O => cnt_sig
    );
\cnt_sig[14]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[14]_i_3_n_0\
    );
\cnt_sig[14]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[14]_i_4_n_0\
    );
\cnt_sig[14]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(14),
      O => \cnt_sig[14]_i_5_n_0\
    );
\cnt_sig[14]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(13),
      O => \cnt_sig[14]_i_6_n_0\
    );
\cnt_sig[14]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(12),
      O => \cnt_sig[14]_i_7_n_0\
    );
\cnt_sig[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[3]_i_2_n_0\
    );
\cnt_sig[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[3]_i_3_n_0\
    );
\cnt_sig[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[3]_i_4_n_0\
    );
\cnt_sig[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[3]_i_5_n_0\
    );
\cnt_sig[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(3),
      O => \cnt_sig[3]_i_6_n_0\
    );
\cnt_sig[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(2),
      O => \cnt_sig[3]_i_7_n_0\
    );
\cnt_sig[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(1),
      O => \cnt_sig[3]_i_8_n_0\
    );
\cnt_sig[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(0),
      O => \cnt_sig[3]_i_9_n_0\
    );
\cnt_sig[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[7]_i_2_n_0\
    );
\cnt_sig[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[7]_i_3_n_0\
    );
\cnt_sig[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[7]_i_4_n_0\
    );
\cnt_sig[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir,
      O => \cnt_sig[7]_i_5_n_0\
    );
\cnt_sig[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(7),
      O => \cnt_sig[7]_i_6_n_0\
    );
\cnt_sig[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(6),
      O => \cnt_sig[7]_i_7_n_0\
    );
\cnt_sig[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(5),
      O => \cnt_sig[7]_i_8_n_0\
    );
\cnt_sig[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir,
      I1 => \^cnt\(4),
      O => \cnt_sig[7]_i_9_n_0\
    );
\cnt_sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[3]_i_1_n_7\,
      Q => \^cnt\(0),
      R => cnt_sig
    );
\cnt_sig_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[11]_i_1_n_5\,
      Q => \^cnt\(10),
      R => cnt_sig
    );
\cnt_sig_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[11]_i_1_n_4\,
      Q => \^cnt\(11),
      R => cnt_sig
    );
\cnt_sig_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sig_reg[7]_i_1_n_0\,
      CO(3) => \cnt_sig_reg[11]_i_1_n_0\,
      CO(2) => \cnt_sig_reg[11]_i_1_n_1\,
      CO(1) => \cnt_sig_reg[11]_i_1_n_2\,
      CO(0) => \cnt_sig_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_sig[11]_i_2_n_0\,
      DI(2) => \cnt_sig[11]_i_3_n_0\,
      DI(1) => \cnt_sig[11]_i_4_n_0\,
      DI(0) => \cnt_sig[11]_i_5_n_0\,
      O(3) => \cnt_sig_reg[11]_i_1_n_4\,
      O(2) => \cnt_sig_reg[11]_i_1_n_5\,
      O(1) => \cnt_sig_reg[11]_i_1_n_6\,
      O(0) => \cnt_sig_reg[11]_i_1_n_7\,
      S(3) => \cnt_sig[11]_i_6_n_0\,
      S(2) => \cnt_sig[11]_i_7_n_0\,
      S(1) => \cnt_sig[11]_i_8_n_0\,
      S(0) => \cnt_sig[11]_i_9_n_0\
    );
\cnt_sig_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[14]_i_2_n_7\,
      Q => \^cnt\(12),
      R => cnt_sig
    );
\cnt_sig_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[14]_i_2_n_6\,
      Q => \^cnt\(13),
      R => cnt_sig
    );
\cnt_sig_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[14]_i_2_n_5\,
      Q => \^cnt\(14),
      R => cnt_sig
    );
\cnt_sig_reg[14]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sig_reg[11]_i_1_n_0\,
      CO(3 downto 2) => \NLW_cnt_sig_reg[14]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_sig_reg[14]_i_2_n_2\,
      CO(0) => \cnt_sig_reg[14]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \cnt_sig[14]_i_3_n_0\,
      DI(0) => \cnt_sig[14]_i_4_n_0\,
      O(3) => \NLW_cnt_sig_reg[14]_i_2_O_UNCONNECTED\(3),
      O(2) => \cnt_sig_reg[14]_i_2_n_5\,
      O(1) => \cnt_sig_reg[14]_i_2_n_6\,
      O(0) => \cnt_sig_reg[14]_i_2_n_7\,
      S(3) => '0',
      S(2) => \cnt_sig[14]_i_5_n_0\,
      S(1) => \cnt_sig[14]_i_6_n_0\,
      S(0) => \cnt_sig[14]_i_7_n_0\
    );
\cnt_sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[3]_i_1_n_6\,
      Q => \^cnt\(1),
      R => cnt_sig
    );
\cnt_sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[3]_i_1_n_5\,
      Q => \^cnt\(2),
      R => cnt_sig
    );
\cnt_sig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[3]_i_1_n_4\,
      Q => \^cnt\(3),
      R => cnt_sig
    );
\cnt_sig_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_sig_reg[3]_i_1_n_0\,
      CO(2) => \cnt_sig_reg[3]_i_1_n_1\,
      CO(1) => \cnt_sig_reg[3]_i_1_n_2\,
      CO(0) => \cnt_sig_reg[3]_i_1_n_3\,
      CYINIT => \cnt_sig[3]_i_2_n_0\,
      DI(3) => \cnt_sig[3]_i_3_n_0\,
      DI(2) => \cnt_sig[3]_i_4_n_0\,
      DI(1) => \cnt_sig[3]_i_5_n_0\,
      DI(0) => dir,
      O(3) => \cnt_sig_reg[3]_i_1_n_4\,
      O(2) => \cnt_sig_reg[3]_i_1_n_5\,
      O(1) => \cnt_sig_reg[3]_i_1_n_6\,
      O(0) => \cnt_sig_reg[3]_i_1_n_7\,
      S(3) => \cnt_sig[3]_i_6_n_0\,
      S(2) => \cnt_sig[3]_i_7_n_0\,
      S(1) => \cnt_sig[3]_i_8_n_0\,
      S(0) => \cnt_sig[3]_i_9_n_0\
    );
\cnt_sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[7]_i_1_n_7\,
      Q => \^cnt\(4),
      R => cnt_sig
    );
\cnt_sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[7]_i_1_n_6\,
      Q => \^cnt\(5),
      R => cnt_sig
    );
\cnt_sig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[7]_i_1_n_5\,
      Q => \^cnt\(6),
      R => cnt_sig
    );
\cnt_sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[7]_i_1_n_4\,
      Q => \^cnt\(7),
      R => cnt_sig
    );
\cnt_sig_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sig_reg[3]_i_1_n_0\,
      CO(3) => \cnt_sig_reg[7]_i_1_n_0\,
      CO(2) => \cnt_sig_reg[7]_i_1_n_1\,
      CO(1) => \cnt_sig_reg[7]_i_1_n_2\,
      CO(0) => \cnt_sig_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_sig[7]_i_2_n_0\,
      DI(2) => \cnt_sig[7]_i_3_n_0\,
      DI(1) => \cnt_sig[7]_i_4_n_0\,
      DI(0) => \cnt_sig[7]_i_5_n_0\,
      O(3) => \cnt_sig_reg[7]_i_1_n_4\,
      O(2) => \cnt_sig_reg[7]_i_1_n_5\,
      O(1) => \cnt_sig_reg[7]_i_1_n_6\,
      O(0) => \cnt_sig_reg[7]_i_1_n_7\,
      S(3) => \cnt_sig[7]_i_6_n_0\,
      S(2) => \cnt_sig[7]_i_7_n_0\,
      S(1) => \cnt_sig[7]_i_8_n_0\,
      S(0) => \cnt_sig[7]_i_9_n_0\
    );
\cnt_sig_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[11]_i_1_n_7\,
      Q => \^cnt\(8),
      R => cnt_sig
    );
\cnt_sig_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \cnt_sig_reg[11]_i_1_n_6\,
      Q => \^cnt\(9),
      R => cnt_sig
    );
done_sig_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => done_sig_i_2_n_0,
      I1 => done_sig_i_3_n_0,
      I2 => done_sig_i_4_n_0,
      I3 => rst,
      I4 => \^done\,
      O => done_sig_i_1_n_0
    );
done_sig_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^cnt\(5),
      I1 => \^cnt\(6),
      I2 => \^cnt\(3),
      I3 => \^cnt\(4),
      I4 => \^cnt\(8),
      I5 => \^cnt\(7),
      O => done_sig_i_2_n_0
    );
done_sig_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^cnt\(2),
      I1 => \^cnt\(1),
      I2 => \^cnt\(0),
      O => done_sig_i_3_n_0
    );
done_sig_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^cnt\(11),
      I1 => \^cnt\(12),
      I2 => \^cnt\(9),
      I3 => \^cnt\(10),
      I4 => \^cnt\(14),
      I5 => \^cnt\(13),
      O => done_sig_i_4_n_0
    );
done_sig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => done_sig_i_1_n_0,
      Q => \^done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Encoder_handler_inst_0_counter_nbit_0 is
  port (
    cnt : out STD_LOGIC_VECTOR ( 14 downto 0 );
    done : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    dir : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_Encoder_handler_inst_0_counter_nbit_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Encoder_handler_inst_0_counter_nbit_0 : entity is "FPGA_Encoder_handler_inst_0_counter_nbit_0,counter_nbit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Encoder_handler_inst_0_counter_nbit_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Encoder_handler_inst_0_counter_nbit_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Encoder_handler_inst_0_counter_nbit_0 : entity is "counter_nbit,Vivado 2024.2";
end FPGA_Encoder_handler_inst_0_counter_nbit_0;

architecture STRUCTURE of FPGA_Encoder_handler_inst_0_counter_nbit_0 is
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
U0: entity work.FPGA_Encoder_handler_inst_0_counter_nbit_0_counter_nbit
     port map (
      clk => clk,
      cnt(14 downto 0) => cnt(14 downto 0),
      dir => dir,
      done => done,
      en => en,
      rst => rst
    );
end STRUCTURE;
