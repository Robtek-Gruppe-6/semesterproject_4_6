-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Apr 23 11:13:02 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_busdmux_0_0/FPGA_SPI_Handler_busdmux_0_0_sim_netlist.vhdl
-- Design      : FPGA_SPI_Handler_busdmux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_busdmux_0_0_busdmux is
  port (
    data_out_1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_out_2 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_SPI_Handler_busdmux_0_0_busdmux : entity is "busdmux";
end FPGA_SPI_Handler_busdmux_0_0_busdmux;

architecture STRUCTURE of FPGA_SPI_Handler_busdmux_0_0_busdmux is
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \data_out_1_reg[0]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \data_out_1_reg[10]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \data_out_1_reg[1]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \data_out_1_reg[2]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \data_out_1_reg[3]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \data_out_1_reg[4]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \data_out_1_reg[5]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \data_out_1_reg[6]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \data_out_1_reg[7]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \data_out_1_reg[8]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED of \data_out_1_reg[9]\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_out_1_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_1_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \data_out_2_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \data_out_2_reg[9]\ : label is "VCC:GE GND:CLR";
begin
\data_out_1_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(0),
      G => sel(0),
      GE => '1',
      Q => data_out_1(0)
    );
\data_out_1_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(10),
      G => sel(0),
      GE => '1',
      Q => data_out_1(10)
    );
\data_out_1_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(1),
      G => sel(0),
      GE => '1',
      Q => data_out_1(1)
    );
\data_out_1_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(2),
      G => sel(0),
      GE => '1',
      Q => data_out_1(2)
    );
\data_out_1_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(3),
      G => sel(0),
      GE => '1',
      Q => data_out_1(3)
    );
\data_out_1_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(4),
      G => sel(0),
      GE => '1',
      Q => data_out_1(4)
    );
\data_out_1_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(5),
      G => sel(0),
      GE => '1',
      Q => data_out_1(5)
    );
\data_out_1_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(6),
      G => sel(0),
      GE => '1',
      Q => data_out_1(6)
    );
\data_out_1_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(7),
      G => sel(0),
      GE => '1',
      Q => data_out_1(7)
    );
\data_out_1_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(8),
      G => sel(0),
      GE => '1',
      Q => data_out_1(8)
    );
\data_out_1_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(9),
      G => sel(0),
      GE => '1',
      Q => data_out_1(9)
    );
\data_out_2_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(0),
      G => sel(0),
      GE => '1',
      Q => data_out_2(0)
    );
\data_out_2_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(10),
      G => sel(0),
      GE => '1',
      Q => data_out_2(10)
    );
\data_out_2_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(1),
      G => sel(0),
      GE => '1',
      Q => data_out_2(1)
    );
\data_out_2_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(2),
      G => sel(0),
      GE => '1',
      Q => data_out_2(2)
    );
\data_out_2_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(3),
      G => sel(0),
      GE => '1',
      Q => data_out_2(3)
    );
\data_out_2_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(4),
      G => sel(0),
      GE => '1',
      Q => data_out_2(4)
    );
\data_out_2_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(5),
      G => sel(0),
      GE => '1',
      Q => data_out_2(5)
    );
\data_out_2_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(6),
      G => sel(0),
      GE => '1',
      Q => data_out_2(6)
    );
\data_out_2_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(7),
      G => sel(0),
      GE => '1',
      Q => data_out_2(7)
    );
\data_out_2_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(8),
      G => sel(0),
      GE => '1',
      Q => data_out_2(8)
    );
\data_out_2_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => data_in(9),
      G => sel(0),
      GE => '1',
      Q => data_out_2(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_busdmux_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_out_1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_out_2 : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_SPI_Handler_busdmux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_SPI_Handler_busdmux_0_0 : entity is "FPGA_SPI_Handler_busdmux_0_0,busdmux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_SPI_Handler_busdmux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_SPI_Handler_busdmux_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_SPI_Handler_busdmux_0_0 : entity is "busdmux,Vivado 2024.2";
end FPGA_SPI_Handler_busdmux_0_0;

architecture STRUCTURE of FPGA_SPI_Handler_busdmux_0_0 is
begin
U0: entity work.FPGA_SPI_Handler_busdmux_0_0_busdmux
     port map (
      data_in(10 downto 0) => data_in(10 downto 0),
      data_out_1(10 downto 0) => data_out_1(10 downto 0),
      data_out_2(10 downto 0) => data_out_2(10 downto 0),
      sel(0) => sel(0)
    );
end STRUCTURE;
