-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:09:49 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/bd/FPGA_Motor_handler_inst_0/ip/FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0/FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0_sim_netlist.vhdl
-- Design      : FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0_signed_to_absolute_integer is
  port (
    a_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    o_sign : out STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    val : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0_signed_to_absolute_integer : entity is "signed_to_absolute_integer";
end FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0_signed_to_absolute_integer;

architecture STRUCTURE of FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0_signed_to_absolute_integer is
  signal \a_val_sig[5]_i_2_n_0\ : STD_LOGIC;
  signal \a_val_sig[9]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_val_sig[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \a_val_sig[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \a_val_sig[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \a_val_sig[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \a_val_sig[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \a_val_sig[8]_i_1\ : label is "soft_lutpair1";
begin
\a_val_sig[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => val(10),
      I1 => val(0),
      I2 => val(1),
      O => p_0_in(1)
    );
\a_val_sig[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57A8"
    )
        port map (
      I0 => val(10),
      I1 => val(0),
      I2 => val(1),
      I3 => val(2),
      O => p_0_in(2)
    );
\a_val_sig[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557AAA8"
    )
        port map (
      I0 => val(10),
      I1 => val(1),
      I2 => val(0),
      I3 => val(2),
      I4 => val(3),
      O => p_0_in(3)
    );
\a_val_sig[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557AAAAAAA8"
    )
        port map (
      I0 => val(10),
      I1 => val(2),
      I2 => val(0),
      I3 => val(1),
      I4 => val(3),
      I5 => val(4),
      O => p_0_in(4)
    );
\a_val_sig[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => val(10),
      I1 => \a_val_sig[5]_i_2_n_0\,
      I2 => val(5),
      O => p_0_in(5)
    );
\a_val_sig[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => val(3),
      I1 => val(1),
      I2 => val(0),
      I3 => val(2),
      I4 => val(4),
      O => \a_val_sig[5]_i_2_n_0\
    );
\a_val_sig[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => val(10),
      I1 => \a_val_sig[9]_i_2_n_0\,
      I2 => val(6),
      O => p_0_in(6)
    );
\a_val_sig[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57A8"
    )
        port map (
      I0 => val(10),
      I1 => \a_val_sig[9]_i_2_n_0\,
      I2 => val(6),
      I3 => val(7),
      O => p_0_in(7)
    );
\a_val_sig[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557AAA8"
    )
        port map (
      I0 => val(10),
      I1 => val(6),
      I2 => \a_val_sig[9]_i_2_n_0\,
      I3 => val(7),
      I4 => val(8),
      O => p_0_in(8)
    );
\a_val_sig[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFF0001FEFF00"
    )
        port map (
      I0 => val(6),
      I1 => \a_val_sig[9]_i_2_n_0\,
      I2 => val(7),
      I3 => val(9),
      I4 => val(10),
      I5 => val(8),
      O => p_0_in(9)
    );
\a_val_sig[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => val(4),
      I1 => val(2),
      I2 => val(0),
      I3 => val(1),
      I4 => val(3),
      I5 => val(5),
      O => \a_val_sig[9]_i_2_n_0\
    );
\a_val_sig_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => val(0),
      Q => a_val(0)
    );
\a_val_sig_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(1),
      Q => a_val(1)
    );
\a_val_sig_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(2),
      Q => a_val(2)
    );
\a_val_sig_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(3),
      Q => a_val(3)
    );
\a_val_sig_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(4),
      Q => a_val(4)
    );
\a_val_sig_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(5),
      Q => a_val(5)
    );
\a_val_sig_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(6),
      Q => a_val(6)
    );
\a_val_sig_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(7),
      Q => a_val(7)
    );
\a_val_sig_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(8),
      Q => a_val(8)
    );
\a_val_sig_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => p_0_in(9),
      Q => a_val(9)
    );
o_sign_sig_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => val(10),
      Q => o_sign
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    val : in STD_LOGIC_VECTOR ( 10 downto 0 );
    a_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    o_sign : out STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0 : entity is "FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0,signed_to_absolute_integer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0 : entity is "signed_to_absolute_integer,Vivado 2024.2";
end FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0;

architecture STRUCTURE of FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0 is
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
U0: entity work.FPGA_Motor_handler_inst_0_signed_to_absolute_i_0_0_signed_to_absolute_integer
     port map (
      a_val(9 downto 0) => a_val(9 downto 0),
      clk => clk,
      en => en,
      o_sign => o_sign,
      rst => rst,
      val(10 downto 0) => val(10 downto 0)
    );
end STRUCTURE;
