-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Apr 23 11:13:01 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_SPI_rx_block_0_0/FPGA_SPI_Handler_SPI_rx_block_0_0_sim_netlist.vhdl
-- Design      : FPGA_SPI_Handler_SPI_rx_block_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_SPI_rx_block_0_0_SPI_rx_block is
  port (
    received_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    intr : out STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    data_to_read : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_SPI_Handler_SPI_rx_block_0_0_SPI_rx_block : entity is "SPI_rx_block";
end FPGA_SPI_Handler_SPI_rx_block_0_0_SPI_rx_block;

architecture STRUCTURE of FPGA_SPI_Handler_SPI_rx_block_0_0_SPI_rx_block is
  signal bit_count : STD_LOGIC;
  signal \bit_count[3]_i_1_n_0\ : STD_LOGIC;
  signal bit_count_reg : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \bit_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \^intr\ : STD_LOGIC;
  signal intr_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \shift_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_count[3]_i_2\ : label is "soft_lutpair0";
begin
  intr <= \^intr\;
\bit_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_count_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bit_count_reg_n_0_[0]\,
      I1 => \bit_count_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \bit_count_reg_n_0_[0]\,
      I1 => \bit_count_reg_n_0_[1]\,
      I2 => bit_count_reg(2),
      O => \p_0_in__0\(2)
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => bit_count_reg(3),
      I1 => bit_count_reg(2),
      I2 => en,
      I3 => rst,
      O => \bit_count[3]_i_1_n_0\
    );
\bit_count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \bit_count_reg_n_0_[1]\,
      I1 => \bit_count_reg_n_0_[0]\,
      I2 => bit_count_reg(2),
      I3 => bit_count_reg(3),
      O => \p_0_in__0\(3)
    );
\bit_count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \bit_count_reg_n_0_[0]\,
      S => \bit_count[3]_i_1_n_0\
    );
\bit_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \bit_count_reg_n_0_[1]\,
      R => \bit_count[3]_i_1_n_0\
    );
\bit_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => bit_count_reg(2),
      R => \bit_count[3]_i_1_n_0\
    );
\bit_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => bit_count_reg(3),
      R => \bit_count[3]_i_1_n_0\
    );
intr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAC0AA"
    )
        port map (
      I0 => \^intr\,
      I1 => bit_count_reg(3),
      I2 => bit_count_reg(2),
      I3 => en,
      I4 => rst,
      O => intr_i_1_n_0
    );
intr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => intr_i_1_n_0,
      Q => \^intr\,
      R => '0'
    );
\received_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => en,
      I1 => bit_count_reg(2),
      I2 => bit_count_reg(3),
      O => bit_count
    );
\received_data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(1),
      Q => received_data(0)
    );
\received_data_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(11),
      Q => received_data(10)
    );
\received_data_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => \shift_reg_reg_n_0_[11]\,
      Q => received_data(11)
    );
\received_data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(2),
      Q => received_data(1)
    );
\received_data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(3),
      Q => received_data(2)
    );
\received_data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(4),
      Q => received_data(3)
    );
\received_data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(5),
      Q => received_data(4)
    );
\received_data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(6),
      Q => received_data(5)
    );
\received_data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(7),
      Q => received_data(6)
    );
\received_data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(8),
      Q => received_data(7)
    );
\received_data_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(9),
      Q => received_data(8)
    );
\received_data_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      CLR => rst,
      D => p_0_in(10),
      Q => received_data(9)
    );
\shift_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => en,
      I1 => rst,
      O => \shift_reg[11]_i_1_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => data_to_read,
      Q => p_0_in(1),
      R => '0'
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(10),
      Q => p_0_in(11),
      R => '0'
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(11),
      Q => \shift_reg_reg_n_0_[11]\,
      R => '0'
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(1),
      Q => p_0_in(2),
      R => '0'
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(2),
      Q => p_0_in(3),
      R => '0'
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(3),
      Q => p_0_in(4),
      R => '0'
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(4),
      Q => p_0_in(5),
      R => '0'
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(5),
      Q => p_0_in(6),
      R => '0'
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(6),
      Q => p_0_in(7),
      R => '0'
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(7),
      Q => p_0_in(8),
      R => '0'
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(8),
      Q => p_0_in(9),
      R => '0'
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[11]_i_1_n_0\,
      D => p_0_in(9),
      Q => p_0_in(10),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_SPI_rx_block_0_0 is
  port (
    clk : in STD_LOGIC;
    data_to_read : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    received_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    intr : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_SPI_Handler_SPI_rx_block_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_SPI_Handler_SPI_rx_block_0_0 : entity is "FPGA_SPI_Handler_SPI_rx_block_0_0,SPI_rx_block,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_SPI_Handler_SPI_rx_block_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_SPI_Handler_SPI_rx_block_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_SPI_Handler_SPI_rx_block_0_0 : entity is "SPI_rx_block,Vivado 2024.2";
end FPGA_SPI_Handler_SPI_rx_block_0_0;

architecture STRUCTURE of FPGA_SPI_Handler_SPI_rx_block_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_SPI_Handler_clk_0, INSERT_VIP 0";
  attribute x_interface_info of intr : signal is "xilinx.com:signal:interrupt:1.0 intr INTERRUPT";
  attribute x_interface_mode of intr : signal is "master intr";
  attribute x_interface_parameter of intr : signal is "XIL_INTERFACENAME intr, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.FPGA_SPI_Handler_SPI_rx_block_0_0_SPI_rx_block
     port map (
      clk => clk,
      data_to_read => data_to_read,
      en => en,
      intr => intr,
      received_data(11 downto 0) => received_data(11 downto 0),
      rst => rst
    );
end STRUCTURE;
