-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Apr 23 11:13:02 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_busmux_2x1_0_0/FPGA_SPI_Handler_busmux_2x1_0_0_sim_netlist.vhdl
-- Design      : FPGA_SPI_Handler_busmux_2x1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_busmux_2x1_0_0_busmux_2x1 is
  port (
    o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    input_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_SPI_Handler_busmux_2x1_0_0_busmux_2x1 : entity is "busmux_2x1";
end FPGA_SPI_Handler_busmux_2x1_0_0_busmux_2x1;

architecture STRUCTURE of FPGA_SPI_Handler_busmux_2x1_0_0_busmux_2x1 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o[9]_INST_0\ : label is "soft_lutpair4";
begin
\o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(0),
      I1 => input_1(0),
      I2 => s,
      O => o(0)
    );
\o[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(10),
      I1 => input_1(10),
      I2 => s,
      O => o(10)
    );
\o[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(11),
      I1 => input_1(11),
      I2 => s,
      O => o(11)
    );
\o[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(12),
      I1 => input_1(12),
      I2 => s,
      O => o(12)
    );
\o[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(13),
      I1 => input_1(13),
      I2 => s,
      O => o(13)
    );
\o[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(14),
      I1 => input_1(14),
      I2 => s,
      O => o(14)
    );
\o[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(15),
      I1 => input_1(15),
      I2 => s,
      O => o(15)
    );
\o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(1),
      I1 => input_1(1),
      I2 => s,
      O => o(1)
    );
\o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(2),
      I1 => input_1(2),
      I2 => s,
      O => o(2)
    );
\o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(3),
      I1 => input_1(3),
      I2 => s,
      O => o(3)
    );
\o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(4),
      I1 => input_1(4),
      I2 => s,
      O => o(4)
    );
\o[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(5),
      I1 => input_1(5),
      I2 => s,
      O => o(5)
    );
\o[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(6),
      I1 => input_1(6),
      I2 => s,
      O => o(6)
    );
\o[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(7),
      I1 => input_1(7),
      I2 => s,
      O => o(7)
    );
\o[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(8),
      I1 => input_1(8),
      I2 => s,
      O => o(8)
    );
\o[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_2(9),
      I1 => input_1(9),
      I2 => s,
      O => o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_busmux_2x1_0_0 is
  port (
    input_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_SPI_Handler_busmux_2x1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_SPI_Handler_busmux_2x1_0_0 : entity is "FPGA_SPI_Handler_busmux_2x1_0_0,busmux_2x1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_SPI_Handler_busmux_2x1_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_SPI_Handler_busmux_2x1_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_SPI_Handler_busmux_2x1_0_0 : entity is "busmux_2x1,Vivado 2024.2";
end FPGA_SPI_Handler_busmux_2x1_0_0;

architecture STRUCTURE of FPGA_SPI_Handler_busmux_2x1_0_0 is
begin
U0: entity work.FPGA_SPI_Handler_busmux_2x1_0_0_busmux_2x1
     port map (
      input_1(15 downto 0) => input_1(15 downto 0),
      input_2(15 downto 0) => input_2(15 downto 0),
      o(15 downto 0) => o(15 downto 0),
      s => s
    );
end STRUCTURE;
