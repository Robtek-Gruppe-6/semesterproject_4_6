-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:08:22 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_SPI_slave_block_0_1/FPGA_Main_task_SPI_slave_block_0_1_sim_netlist.vhdl
-- Design      : FPGA_Main_task_SPI_slave_block_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Main_task_SPI_slave_block_0_1_SPI_slave_block is
  port (
    miso : out STD_LOGIC;
    rx : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ss : in STD_LOGIC;
    rst : in STD_LOGIC;
    read_en : in STD_LOGIC;
    cpha : in STD_LOGIC;
    sck : in STD_LOGIC;
    cpol : in STD_LOGIC;
    tx : in STD_LOGIC_VECTOR ( 15 downto 0 );
    mosi : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_Main_task_SPI_slave_block_0_1_SPI_slave_block : entity is "SPI_slave_block";
end FPGA_Main_task_SPI_slave_block_0_1_SPI_slave_block;

architecture STRUCTURE of FPGA_Main_task_SPI_slave_block_0_1_SPI_slave_block is
  signal \active_bit[16]_i_1_n_0\ : STD_LOGIC;
  signal \active_bit[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \active_bit[2]_i_1_n_0\ : STD_LOGIC;
  signal \active_bit_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \active_bit_reg[0]_P_n_0\ : STD_LOGIC;
  signal \active_bit_reg[1]_C_n_0\ : STD_LOGIC;
  signal \active_bit_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \active_bit_reg[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \active_bit_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \active_bit_reg[1]_P_n_0\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[10]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[11]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[12]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[13]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[14]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[15]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[16]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[2]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[3]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[4]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[5]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[6]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[7]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[8]\ : STD_LOGIC;
  signal \active_bit_reg_n_0_[9]\ : STD_LOGIC;
  signal miso_i_2_n_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal rx0 : STD_LOGIC;
  signal rx_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rx_reg[15]_i_1__0_n_0\ : STD_LOGIC;
  signal tx_reg : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \tx_reg[10]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[11]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[12]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[13]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[14]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[15]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[4]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[5]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[6]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[7]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[8]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[9]_C_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[0]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[10]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[10]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[10]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[10]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[10]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[11]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[11]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[11]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[11]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[11]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[12]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[12]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[12]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[12]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[12]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[13]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[13]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[13]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[13]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[13]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[14]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[14]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[14]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[14]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[14]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[15]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[15]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[15]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[15]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[15]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[1]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[1]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[2]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[2]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[3]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[3]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[3]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[3]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[4]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[4]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[4]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[4]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[5]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[5]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[5]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[5]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[6]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[6]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[6]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[6]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[6]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[7]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[7]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[7]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[7]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[7]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[8]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[8]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[8]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[8]_P_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[9]_C_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[9]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[9]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[9]_LDC_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[9]_P_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \active_bit_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \active_bit_reg[0]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \active_bit_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \active_bit_reg[1]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[0]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[10]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[10]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[11]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[11]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[12]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[12]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[13]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[13]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[14]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[14]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[15]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[15]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[1]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[2]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[3]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[4]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[4]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[5]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[5]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[6]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[6]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[7]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[7]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[8]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[8]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \rx_reg[9]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg[9]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[0]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[10]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[10]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[11]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[11]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[12]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[12]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[13]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[13]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[14]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[14]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[15]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[15]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[1]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[2]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[3]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[4]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[5]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[6]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[7]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[8]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[9]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[9]_LDC\ : label is "VCC:GE";
begin
\active_bit[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ss,
      I1 => rst,
      O => \active_bit[16]_i_1_n_0\
    );
\active_bit[1]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \active_bit_reg[0]_LDC_n_0\,
      I1 => \active_bit_reg[0]_P_n_0\,
      O => \active_bit[1]_C_i_1_n_0\
    );
\active_bit[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \active_bit_reg[1]_P_n_0\,
      I1 => \active_bit_reg[1]_LDC_n_0\,
      I2 => \active_bit_reg[1]_C_n_0\,
      O => \active_bit[2]_i_1_n_0\
    );
\active_bit_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \active_bit_reg[1]_LDC_i_1_n_0\,
      D => '1',
      G => \active_bit_reg[1]_LDC_i_2_n_0\,
      GE => '1',
      Q => \active_bit_reg[0]_LDC_n_0\
    );
\active_bit_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      D => '0',
      PRE => \active_bit_reg[1]_LDC_i_2_n_0\,
      Q => \active_bit_reg[0]_P_n_0\
    );
\active_bit_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[9]\,
      Q => \active_bit_reg_n_0_[10]\
    );
\active_bit_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[10]\,
      Q => \active_bit_reg_n_0_[11]\
    );
\active_bit_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[11]\,
      Q => \active_bit_reg_n_0_[12]\
    );
\active_bit_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[12]\,
      Q => \active_bit_reg_n_0_[13]\
    );
\active_bit_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[13]\,
      Q => \active_bit_reg_n_0_[14]\
    );
\active_bit_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[14]\,
      Q => \active_bit_reg_n_0_[15]\
    );
\active_bit_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[15]\,
      Q => \active_bit_reg_n_0_[16]\
    );
\active_bit_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit_reg[1]_LDC_i_2_n_0\,
      D => \active_bit[1]_C_i_1_n_0\,
      Q => \active_bit_reg[1]_C_n_0\
    );
\active_bit_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \active_bit_reg[1]_LDC_i_2_n_0\,
      D => '1',
      G => \active_bit_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \active_bit_reg[1]_LDC_n_0\
    );
\active_bit_reg[1]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => cpha,
      O => \active_bit_reg[1]_LDC_i_1_n_0\
    );
\active_bit_reg[1]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => cpha,
      I1 => rst,
      I2 => ss,
      O => \active_bit_reg[1]_LDC_i_2_n_0\
    );
\active_bit_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      D => \active_bit[1]_C_i_1_n_0\,
      PRE => \active_bit_reg[1]_LDC_i_1_n_0\,
      Q => \active_bit_reg[1]_P_n_0\
    );
\active_bit_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit[2]_i_1_n_0\,
      Q => \active_bit_reg_n_0_[2]\
    );
\active_bit_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[2]\,
      Q => \active_bit_reg_n_0_[3]\
    );
\active_bit_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[3]\,
      Q => \active_bit_reg_n_0_[4]\
    );
\active_bit_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[4]\,
      Q => \active_bit_reg_n_0_[5]\
    );
\active_bit_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[5]\,
      Q => \active_bit_reg_n_0_[6]\
    );
\active_bit_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[6]\,
      Q => \active_bit_reg_n_0_[7]\
    );
\active_bit_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[7]\,
      Q => \active_bit_reg_n_0_[8]\
    );
\active_bit_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \active_bit[16]_i_1_n_0\,
      D => \active_bit_reg_n_0_[8]\,
      Q => \active_bit_reg_n_0_[9]\
    );
miso_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[15]_P_n_0\,
      I1 => \tx_reg_reg[15]_LDC_n_0\,
      I2 => \tx_reg_reg[15]_C_n_0\,
      O => tx_reg(15)
    );
miso_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0069"
    )
        port map (
      I0 => sck,
      I1 => cpha,
      I2 => cpol,
      I3 => ss,
      O => miso_i_2_n_0
    );
miso_reg: unisim.vcomponents.FDRE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      D => tx_reg(15),
      Q => miso,
      R => '0'
    );
\rx_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(0),
      G => rx0,
      GE => '1',
      Q => rx(0)
    );
\rx_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(10),
      G => rx0,
      GE => '1',
      Q => rx(10)
    );
\rx_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(11),
      G => rx0,
      GE => '1',
      Q => rx(11)
    );
\rx_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(12),
      G => rx0,
      GE => '1',
      Q => rx(12)
    );
\rx_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(13),
      G => rx0,
      GE => '1',
      Q => rx(13)
    );
\rx_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(14),
      G => rx0,
      GE => '1',
      Q => rx(14)
    );
\rx_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(15),
      G => rx0,
      GE => '1',
      Q => rx(15)
    );
\rx_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ss,
      I1 => read_en,
      O => rx0
    );
\rx_reg[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000047FF47"
    )
        port map (
      I0 => \active_bit_reg[1]_P_n_0\,
      I1 => \active_bit_reg[1]_LDC_n_0\,
      I2 => \active_bit_reg[1]_C_n_0\,
      I3 => cpha,
      I4 => \active_bit[1]_C_i_1_n_0\,
      I5 => ss,
      O => \rx_reg[15]_i_1__0_n_0\
    );
\rx_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(1),
      G => rx0,
      GE => '1',
      Q => rx(1)
    );
\rx_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(2),
      G => rx0,
      GE => '1',
      Q => rx(2)
    );
\rx_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(3),
      G => rx0,
      GE => '1',
      Q => rx(3)
    );
\rx_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(4),
      G => rx0,
      GE => '1',
      Q => rx(4)
    );
\rx_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(5),
      G => rx0,
      GE => '1',
      Q => rx(5)
    );
\rx_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(6),
      G => rx0,
      GE => '1',
      Q => rx(6)
    );
\rx_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(7),
      G => rx0,
      GE => '1',
      Q => rx(7)
    );
\rx_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(8),
      G => rx0,
      GE => '1',
      Q => rx(8)
    );
\rx_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => rst,
      D => rx_reg(9),
      G => rx0,
      GE => '1',
      Q => rx(9)
    );
\rx_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => mosi,
      Q => rx_reg(0)
    );
\rx_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(9),
      Q => rx_reg(10)
    );
\rx_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(10),
      Q => rx_reg(11)
    );
\rx_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(11),
      Q => rx_reg(12)
    );
\rx_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(12),
      Q => rx_reg(13)
    );
\rx_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(13),
      Q => rx_reg(14)
    );
\rx_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(14),
      Q => rx_reg(15)
    );
\rx_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(0),
      Q => rx_reg(1)
    );
\rx_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(1),
      Q => rx_reg(2)
    );
\rx_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(2),
      Q => rx_reg(3)
    );
\rx_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(3),
      Q => rx_reg(4)
    );
\rx_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(4),
      Q => rx_reg(5)
    );
\rx_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(5),
      Q => rx_reg(6)
    );
\rx_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(6),
      Q => rx_reg(7)
    );
\rx_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(7),
      Q => rx_reg(8)
    );
\rx_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => miso_i_2_n_0,
      CE => \rx_reg[15]_i_1__0_n_0\,
      CLR => rst,
      D => rx_reg(8),
      Q => rx_reg(9)
    );
\tx_reg[10]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[9]_P_n_0\,
      I1 => \tx_reg_reg[9]_LDC_n_0\,
      I2 => \tx_reg_reg[9]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[10]_C_n_0\,
      O => \tx_reg[10]_C_i_1_n_0\
    );
\tx_reg[10]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[9]_P_n_0\,
      I1 => \tx_reg_reg[9]_LDC_n_0\,
      I2 => \tx_reg_reg[9]_C_n_0\,
      O => p_3_in(10)
    );
\tx_reg[11]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[10]_P_n_0\,
      I1 => \tx_reg_reg[10]_LDC_n_0\,
      I2 => \tx_reg_reg[10]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[11]_C_n_0\,
      O => \tx_reg[11]_C_i_1_n_0\
    );
\tx_reg[11]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[10]_P_n_0\,
      I1 => \tx_reg_reg[10]_LDC_n_0\,
      I2 => \tx_reg_reg[10]_C_n_0\,
      O => p_3_in(11)
    );
\tx_reg[12]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[11]_P_n_0\,
      I1 => \tx_reg_reg[11]_LDC_n_0\,
      I2 => \tx_reg_reg[11]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[12]_C_n_0\,
      O => \tx_reg[12]_C_i_1_n_0\
    );
\tx_reg[12]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[11]_P_n_0\,
      I1 => \tx_reg_reg[11]_LDC_n_0\,
      I2 => \tx_reg_reg[11]_C_n_0\,
      O => p_3_in(12)
    );
\tx_reg[13]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[12]_P_n_0\,
      I1 => \tx_reg_reg[12]_LDC_n_0\,
      I2 => \tx_reg_reg[12]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[13]_C_n_0\,
      O => \tx_reg[13]_C_i_1_n_0\
    );
\tx_reg[13]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[12]_P_n_0\,
      I1 => \tx_reg_reg[12]_LDC_n_0\,
      I2 => \tx_reg_reg[12]_C_n_0\,
      O => p_3_in(13)
    );
\tx_reg[14]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[13]_P_n_0\,
      I1 => \tx_reg_reg[13]_LDC_n_0\,
      I2 => \tx_reg_reg[13]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[14]_C_n_0\,
      O => \tx_reg[14]_C_i_1_n_0\
    );
\tx_reg[14]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[13]_P_n_0\,
      I1 => \tx_reg_reg[13]_LDC_n_0\,
      I2 => \tx_reg_reg[13]_C_n_0\,
      O => p_3_in(14)
    );
\tx_reg[15]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[14]_P_n_0\,
      I1 => \tx_reg_reg[14]_LDC_n_0\,
      I2 => \tx_reg_reg[14]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[15]_C_n_0\,
      O => \tx_reg[15]_C_i_1_n_0\
    );
\tx_reg[15]_P_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \active_bit_reg_n_0_[16]\,
      O => p_2_in
    );
\tx_reg[15]_P_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[14]_P_n_0\,
      I1 => \tx_reg_reg[14]_LDC_n_0\,
      I2 => \tx_reg_reg[14]_C_n_0\,
      O => p_3_in(15)
    );
\tx_reg[1]_C_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F808"
    )
        port map (
      I0 => \tx_reg_reg[0]_LDC_n_0\,
      I1 => \tx_reg_reg[0]_P_n_0\,
      I2 => \active_bit_reg_n_0_[16]\,
      I3 => \tx_reg_reg[1]_C_n_0\,
      O => \tx_reg[1]_C_i_1_n_0\
    );
\tx_reg[1]_P_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tx_reg_reg[0]_LDC_n_0\,
      I1 => \tx_reg_reg[0]_P_n_0\,
      O => p_3_in(1)
    );
\tx_reg[2]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[1]_P_n_0\,
      I1 => \tx_reg_reg[1]_LDC_n_0\,
      I2 => \tx_reg_reg[1]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[2]_C_n_0\,
      O => \tx_reg[2]_C_i_1_n_0\
    );
\tx_reg[2]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[1]_P_n_0\,
      I1 => \tx_reg_reg[1]_LDC_n_0\,
      I2 => \tx_reg_reg[1]_C_n_0\,
      O => p_3_in(2)
    );
\tx_reg[3]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[2]_P_n_0\,
      I1 => \tx_reg_reg[2]_LDC_n_0\,
      I2 => \tx_reg_reg[2]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[3]_C_n_0\,
      O => \tx_reg[3]_C_i_1_n_0\
    );
\tx_reg[3]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[2]_P_n_0\,
      I1 => \tx_reg_reg[2]_LDC_n_0\,
      I2 => \tx_reg_reg[2]_C_n_0\,
      O => p_3_in(3)
    );
\tx_reg[4]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[3]_P_n_0\,
      I1 => \tx_reg_reg[3]_LDC_n_0\,
      I2 => \tx_reg_reg[3]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[4]_C_n_0\,
      O => \tx_reg[4]_C_i_1_n_0\
    );
\tx_reg[4]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[3]_P_n_0\,
      I1 => \tx_reg_reg[3]_LDC_n_0\,
      I2 => \tx_reg_reg[3]_C_n_0\,
      O => p_3_in(4)
    );
\tx_reg[5]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[4]_P_n_0\,
      I1 => \tx_reg_reg[4]_LDC_n_0\,
      I2 => \tx_reg_reg[4]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[5]_C_n_0\,
      O => \tx_reg[5]_C_i_1_n_0\
    );
\tx_reg[5]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[4]_P_n_0\,
      I1 => \tx_reg_reg[4]_LDC_n_0\,
      I2 => \tx_reg_reg[4]_C_n_0\,
      O => p_3_in(5)
    );
\tx_reg[6]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[5]_P_n_0\,
      I1 => \tx_reg_reg[5]_LDC_n_0\,
      I2 => \tx_reg_reg[5]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[6]_C_n_0\,
      O => \tx_reg[6]_C_i_1_n_0\
    );
\tx_reg[6]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[5]_P_n_0\,
      I1 => \tx_reg_reg[5]_LDC_n_0\,
      I2 => \tx_reg_reg[5]_C_n_0\,
      O => p_3_in(6)
    );
\tx_reg[7]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[6]_P_n_0\,
      I1 => \tx_reg_reg[6]_LDC_n_0\,
      I2 => \tx_reg_reg[6]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[7]_C_n_0\,
      O => \tx_reg[7]_C_i_1_n_0\
    );
\tx_reg[7]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[6]_P_n_0\,
      I1 => \tx_reg_reg[6]_LDC_n_0\,
      I2 => \tx_reg_reg[6]_C_n_0\,
      O => p_3_in(7)
    );
\tx_reg[8]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[7]_P_n_0\,
      I1 => \tx_reg_reg[7]_LDC_n_0\,
      I2 => \tx_reg_reg[7]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[8]_C_n_0\,
      O => \tx_reg[8]_C_i_1_n_0\
    );
\tx_reg[8]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[7]_P_n_0\,
      I1 => \tx_reg_reg[7]_LDC_n_0\,
      I2 => \tx_reg_reg[7]_C_n_0\,
      O => p_3_in(8)
    );
\tx_reg[9]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => \tx_reg_reg[8]_P_n_0\,
      I1 => \tx_reg_reg[8]_LDC_n_0\,
      I2 => \tx_reg_reg[8]_C_n_0\,
      I3 => \active_bit_reg_n_0_[16]\,
      I4 => \tx_reg_reg[9]_C_n_0\,
      O => \tx_reg[9]_C_i_1_n_0\
    );
\tx_reg[9]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_reg_reg[8]_P_n_0\,
      I1 => \tx_reg_reg[8]_LDC_n_0\,
      I2 => \tx_reg_reg[8]_C_n_0\,
      O => p_3_in(9)
    );
\tx_reg_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[0]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[0]_LDC_n_0\
    );
\tx_reg_reg[0]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(0),
      O => \tx_reg_reg[0]_LDC_i_1_n_0\
    );
\tx_reg_reg[0]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(0),
      O => \tx_reg_reg[0]_LDC_i_2_n_0\
    );
\tx_reg_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => '0',
      PRE => \tx_reg_reg[0]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[0]_P_n_0\
    );
\tx_reg_reg[10]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[10]_LDC_i_2_n_0\,
      D => \tx_reg[10]_C_i_1_n_0\,
      Q => \tx_reg_reg[10]_C_n_0\
    );
\tx_reg_reg[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[10]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[10]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[10]_LDC_n_0\
    );
\tx_reg_reg[10]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(10),
      O => \tx_reg_reg[10]_LDC_i_1_n_0\
    );
\tx_reg_reg[10]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(10),
      O => \tx_reg_reg[10]_LDC_i_2_n_0\
    );
\tx_reg_reg[10]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(10),
      PRE => \tx_reg_reg[10]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[10]_P_n_0\
    );
\tx_reg_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[11]_LDC_i_2_n_0\,
      D => \tx_reg[11]_C_i_1_n_0\,
      Q => \tx_reg_reg[11]_C_n_0\
    );
\tx_reg_reg[11]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[11]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[11]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[11]_LDC_n_0\
    );
\tx_reg_reg[11]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(11),
      O => \tx_reg_reg[11]_LDC_i_1_n_0\
    );
\tx_reg_reg[11]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(11),
      O => \tx_reg_reg[11]_LDC_i_2_n_0\
    );
\tx_reg_reg[11]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(11),
      PRE => \tx_reg_reg[11]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[11]_P_n_0\
    );
\tx_reg_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[12]_LDC_i_2_n_0\,
      D => \tx_reg[12]_C_i_1_n_0\,
      Q => \tx_reg_reg[12]_C_n_0\
    );
\tx_reg_reg[12]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[12]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[12]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[12]_LDC_n_0\
    );
\tx_reg_reg[12]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(12),
      O => \tx_reg_reg[12]_LDC_i_1_n_0\
    );
\tx_reg_reg[12]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(12),
      O => \tx_reg_reg[12]_LDC_i_2_n_0\
    );
\tx_reg_reg[12]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(12),
      PRE => \tx_reg_reg[12]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[12]_P_n_0\
    );
\tx_reg_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[13]_LDC_i_2_n_0\,
      D => \tx_reg[13]_C_i_1_n_0\,
      Q => \tx_reg_reg[13]_C_n_0\
    );
\tx_reg_reg[13]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[13]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[13]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[13]_LDC_n_0\
    );
\tx_reg_reg[13]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(13),
      O => \tx_reg_reg[13]_LDC_i_1_n_0\
    );
\tx_reg_reg[13]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(13),
      O => \tx_reg_reg[13]_LDC_i_2_n_0\
    );
\tx_reg_reg[13]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(13),
      PRE => \tx_reg_reg[13]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[13]_P_n_0\
    );
\tx_reg_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[14]_LDC_i_2_n_0\,
      D => \tx_reg[14]_C_i_1_n_0\,
      Q => \tx_reg_reg[14]_C_n_0\
    );
\tx_reg_reg[14]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[14]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[14]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[14]_LDC_n_0\
    );
\tx_reg_reg[14]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(14),
      O => \tx_reg_reg[14]_LDC_i_1_n_0\
    );
\tx_reg_reg[14]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(14),
      O => \tx_reg_reg[14]_LDC_i_2_n_0\
    );
\tx_reg_reg[14]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(14),
      PRE => \tx_reg_reg[14]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[14]_P_n_0\
    );
\tx_reg_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[15]_LDC_i_2_n_0\,
      D => \tx_reg[15]_C_i_1_n_0\,
      Q => \tx_reg_reg[15]_C_n_0\
    );
\tx_reg_reg[15]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[15]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[15]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[15]_LDC_n_0\
    );
\tx_reg_reg[15]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(15),
      O => \tx_reg_reg[15]_LDC_i_1_n_0\
    );
\tx_reg_reg[15]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(15),
      O => \tx_reg_reg[15]_LDC_i_2_n_0\
    );
\tx_reg_reg[15]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(15),
      PRE => \tx_reg_reg[15]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[15]_P_n_0\
    );
\tx_reg_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[1]_LDC_i_2_n_0\,
      D => \tx_reg[1]_C_i_1_n_0\,
      Q => \tx_reg_reg[1]_C_n_0\
    );
\tx_reg_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[1]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[1]_LDC_n_0\
    );
\tx_reg_reg[1]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(1),
      O => \tx_reg_reg[1]_LDC_i_1_n_0\
    );
\tx_reg_reg[1]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(1),
      O => \tx_reg_reg[1]_LDC_i_2_n_0\
    );
\tx_reg_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(1),
      PRE => \tx_reg_reg[1]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[1]_P_n_0\
    );
\tx_reg_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[2]_LDC_i_2_n_0\,
      D => \tx_reg[2]_C_i_1_n_0\,
      Q => \tx_reg_reg[2]_C_n_0\
    );
\tx_reg_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[2]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[2]_LDC_n_0\
    );
\tx_reg_reg[2]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(2),
      O => \tx_reg_reg[2]_LDC_i_1_n_0\
    );
\tx_reg_reg[2]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(2),
      O => \tx_reg_reg[2]_LDC_i_2_n_0\
    );
\tx_reg_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(2),
      PRE => \tx_reg_reg[2]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[2]_P_n_0\
    );
\tx_reg_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[3]_LDC_i_2_n_0\,
      D => \tx_reg[3]_C_i_1_n_0\,
      Q => \tx_reg_reg[3]_C_n_0\
    );
\tx_reg_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[3]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[3]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[3]_LDC_n_0\
    );
\tx_reg_reg[3]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(3),
      O => \tx_reg_reg[3]_LDC_i_1_n_0\
    );
\tx_reg_reg[3]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(3),
      O => \tx_reg_reg[3]_LDC_i_2_n_0\
    );
\tx_reg_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(3),
      PRE => \tx_reg_reg[3]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[3]_P_n_0\
    );
\tx_reg_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[4]_LDC_i_2_n_0\,
      D => \tx_reg[4]_C_i_1_n_0\,
      Q => \tx_reg_reg[4]_C_n_0\
    );
\tx_reg_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[4]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[4]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[4]_LDC_n_0\
    );
\tx_reg_reg[4]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(4),
      O => \tx_reg_reg[4]_LDC_i_1_n_0\
    );
\tx_reg_reg[4]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(4),
      O => \tx_reg_reg[4]_LDC_i_2_n_0\
    );
\tx_reg_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(4),
      PRE => \tx_reg_reg[4]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[4]_P_n_0\
    );
\tx_reg_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[5]_LDC_i_2_n_0\,
      D => \tx_reg[5]_C_i_1_n_0\,
      Q => \tx_reg_reg[5]_C_n_0\
    );
\tx_reg_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[5]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[5]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[5]_LDC_n_0\
    );
\tx_reg_reg[5]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(5),
      O => \tx_reg_reg[5]_LDC_i_1_n_0\
    );
\tx_reg_reg[5]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(5),
      O => \tx_reg_reg[5]_LDC_i_2_n_0\
    );
\tx_reg_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(5),
      PRE => \tx_reg_reg[5]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[5]_P_n_0\
    );
\tx_reg_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[6]_LDC_i_2_n_0\,
      D => \tx_reg[6]_C_i_1_n_0\,
      Q => \tx_reg_reg[6]_C_n_0\
    );
\tx_reg_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[6]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[6]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[6]_LDC_n_0\
    );
\tx_reg_reg[6]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(6),
      O => \tx_reg_reg[6]_LDC_i_1_n_0\
    );
\tx_reg_reg[6]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(6),
      O => \tx_reg_reg[6]_LDC_i_2_n_0\
    );
\tx_reg_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(6),
      PRE => \tx_reg_reg[6]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[6]_P_n_0\
    );
\tx_reg_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[7]_LDC_i_2_n_0\,
      D => \tx_reg[7]_C_i_1_n_0\,
      Q => \tx_reg_reg[7]_C_n_0\
    );
\tx_reg_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[7]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[7]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[7]_LDC_n_0\
    );
\tx_reg_reg[7]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(7),
      O => \tx_reg_reg[7]_LDC_i_1_n_0\
    );
\tx_reg_reg[7]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(7),
      O => \tx_reg_reg[7]_LDC_i_2_n_0\
    );
\tx_reg_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(7),
      PRE => \tx_reg_reg[7]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[7]_P_n_0\
    );
\tx_reg_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[8]_LDC_i_2_n_0\,
      D => \tx_reg[8]_C_i_1_n_0\,
      Q => \tx_reg_reg[8]_C_n_0\
    );
\tx_reg_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[8]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[8]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[8]_LDC_n_0\
    );
\tx_reg_reg[8]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(8),
      O => \tx_reg_reg[8]_LDC_i_1_n_0\
    );
\tx_reg_reg[8]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(8),
      O => \tx_reg_reg[8]_LDC_i_2_n_0\
    );
\tx_reg_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(8),
      PRE => \tx_reg_reg[8]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[8]_P_n_0\
    );
\tx_reg_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => miso_i_2_n_0,
      CE => '1',
      CLR => \tx_reg_reg[9]_LDC_i_2_n_0\,
      D => \tx_reg[9]_C_i_1_n_0\,
      Q => \tx_reg_reg[9]_C_n_0\
    );
\tx_reg_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg_reg[9]_LDC_i_2_n_0\,
      D => '1',
      G => \tx_reg_reg[9]_LDC_i_1_n_0\,
      GE => '1',
      Q => \tx_reg_reg[9]_LDC_n_0\
    );
\tx_reg_reg[9]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(9),
      O => \tx_reg_reg[9]_LDC_i_1_n_0\
    );
\tx_reg_reg[9]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => rst,
      I1 => ss,
      I2 => tx(9),
      O => \tx_reg_reg[9]_LDC_i_2_n_0\
    );
\tx_reg_reg[9]_P\: unisim.vcomponents.FDPE
     port map (
      C => miso_i_2_n_0,
      CE => p_2_in,
      D => p_3_in(9),
      PRE => \tx_reg_reg[9]_LDC_i_1_n_0\,
      Q => \tx_reg_reg[9]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Main_task_SPI_slave_block_0_1 is
  port (
    cpol : in STD_LOGIC;
    cpha : in STD_LOGIC;
    sck : in STD_LOGIC;
    ss : in STD_LOGIC;
    mosi : in STD_LOGIC;
    miso : out STD_LOGIC;
    read_en : in STD_LOGIC;
    tx : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx : out STD_LOGIC_VECTOR ( 15 downto 0 );
    busy : out STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_Main_task_SPI_slave_block_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Main_task_SPI_slave_block_0_1 : entity is "FPGA_Main_task_SPI_slave_block_0_1,SPI_slave_block,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Main_task_SPI_slave_block_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Main_task_SPI_slave_block_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Main_task_SPI_slave_block_0_1 : entity is "SPI_slave_block,Vivado 2024.2";
end FPGA_Main_task_SPI_slave_block_0_1;

architecture STRUCTURE of FPGA_Main_task_SPI_slave_block_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.FPGA_Main_task_SPI_slave_block_0_1_SPI_slave_block
     port map (
      cpha => cpha,
      cpol => cpol,
      miso => miso,
      mosi => mosi,
      read_en => read_en,
      rst => rst,
      rx(15 downto 0) => rx(15 downto 0),
      sck => sck,
      ss => ss,
      tx(15 downto 0) => tx(15 downto 0)
    );
busy_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ss,
      O => busy
    );
end STRUCTURE;
