-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Apr 23 11:13:01 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/Semesterprojekt/FPGA/block_designs/FPGA_SPI_Handler/ip/FPGA_SPI_Handler_SPI_tx_block_2_0/FPGA_SPI_Handler_SPI_tx_block_2_0_sim_netlist.vhdl
-- Design      : FPGA_SPI_Handler_SPI_tx_block_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_SPI_tx_block_2_0_SPI_tx_block is
  port (
    done : out STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_SPI_Handler_SPI_tx_block_2_0_SPI_tx_block : entity is "SPI_tx_block";
end FPGA_SPI_Handler_SPI_tx_block_2_0_SPI_tx_block;

architecture STRUCTURE of FPGA_SPI_Handler_SPI_tx_block_2_0_SPI_tx_block is
  signal done0_n_0 : STD_LOGIC;
  signal \shift_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_cnt_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of done0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shift_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shift_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shift_cnt[4]_i_1\ : label is "soft_lutpair0";
begin
done0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \shift_cnt_reg_n_0_[4]\,
      I1 => \shift_cnt_reg_n_0_[3]\,
      I2 => \shift_cnt_reg_n_0_[0]\,
      I3 => \shift_cnt_reg_n_0_[1]\,
      I4 => \shift_cnt_reg_n_0_[2]\,
      O => done0_n_0
    );
done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => done0_n_0,
      Q => done
    );
\shift_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000001FF"
    )
        port map (
      I0 => \shift_cnt_reg_n_0_[2]\,
      I1 => \shift_cnt_reg_n_0_[1]\,
      I2 => \shift_cnt_reg_n_0_[3]\,
      I3 => \shift_cnt_reg_n_0_[4]\,
      I4 => \shift_cnt_reg_n_0_[0]\,
      O => \shift_cnt[0]_i_1_n_0\
    );
\shift_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \shift_cnt_reg_n_0_[1]\,
      I1 => \shift_cnt_reg_n_0_[0]\,
      I2 => \shift_cnt_reg_n_0_[4]\,
      O => \shift_cnt[1]_i_1_n_0\
    );
\shift_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \shift_cnt_reg_n_0_[2]\,
      I1 => \shift_cnt_reg_n_0_[1]\,
      I2 => \shift_cnt_reg_n_0_[0]\,
      I3 => \shift_cnt_reg_n_0_[4]\,
      O => \shift_cnt[2]_i_1_n_0\
    );
\shift_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \shift_cnt_reg_n_0_[2]\,
      I1 => \shift_cnt_reg_n_0_[1]\,
      I2 => \shift_cnt_reg_n_0_[0]\,
      I3 => \shift_cnt_reg_n_0_[3]\,
      I4 => \shift_cnt_reg_n_0_[4]\,
      O => \shift_cnt[3]_i_1_n_0\
    );
\shift_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00018000"
    )
        port map (
      I0 => \shift_cnt_reg_n_0_[2]\,
      I1 => \shift_cnt_reg_n_0_[1]\,
      I2 => \shift_cnt_reg_n_0_[0]\,
      I3 => \shift_cnt_reg_n_0_[3]\,
      I4 => \shift_cnt_reg_n_0_[4]\,
      O => \shift_cnt[4]_i_1_n_0\
    );
\shift_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \shift_cnt[0]_i_1_n_0\,
      Q => \shift_cnt_reg_n_0_[0]\
    );
\shift_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \shift_cnt[1]_i_1_n_0\,
      Q => \shift_cnt_reg_n_0_[1]\
    );
\shift_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \shift_cnt[2]_i_1_n_0\,
      Q => \shift_cnt_reg_n_0_[2]\
    );
\shift_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \shift_cnt[3]_i_1_n_0\,
      Q => \shift_cnt_reg_n_0_[3]\
    );
\shift_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \shift_cnt[4]_i_1_n_0\,
      Q => \shift_cnt_reg_n_0_[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler_SPI_tx_block_2_0 is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    bit_out : out STD_LOGIC;
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_SPI_Handler_SPI_tx_block_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_SPI_Handler_SPI_tx_block_2_0 : entity is "FPGA_SPI_Handler_SPI_tx_block_2_0,SPI_tx_block,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_SPI_Handler_SPI_tx_block_2_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_SPI_Handler_SPI_tx_block_2_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_SPI_Handler_SPI_tx_block_2_0 : entity is "SPI_tx_block,Vivado 2024.2";
end FPGA_SPI_Handler_SPI_tx_block_2_0;

architecture STRUCTURE of FPGA_SPI_Handler_SPI_tx_block_2_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_SPI_Handler_clk_0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  bit_out <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.FPGA_SPI_Handler_SPI_tx_block_2_0_SPI_tx_block
     port map (
      clk => clk,
      done => done,
      en => en,
      rst => rst
    );
end STRUCTURE;
