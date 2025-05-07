--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed May  7 17:27:21 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_Motor_handler_inst_3.bd
--Design      : FPGA_Motor_handler_inst_3
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Motor_handler_inst_3 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of FPGA_Motor_handler_inst_3 : entity is "FPGA_Motor_handler_inst_3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FPGA_Motor_handler_inst_3,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=C_/Semesterprojekt/semesterproject_4_6/FPGA/block_designs/FPGA_Motor_handler/FPGA_Motor_handler.bd,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of FPGA_Motor_handler_inst_3 : entity is "FPGA_Motor_handler_inst_3.hwdef";
end FPGA_Motor_handler_inst_3;

architecture STRUCTURE of FPGA_Motor_handler_inst_3 is
  component FPGA_Motor_handler_inst_3_pwm_block_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    duty_cycle : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rst : in STD_LOGIC;
    pwm : out STD_LOGIC
  );
  end component FPGA_Motor_handler_inst_3_pwm_block_0;
  component FPGA_Motor_handler_inst_3_signed_to_absolute_i_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    val : in STD_LOGIC_VECTOR ( 10 downto 0 );
    a_val : out STD_LOGIC_VECTOR ( 9 downto 0 );
    o_sign : out STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component FPGA_Motor_handler_inst_3_signed_to_absolute_i_0_0;
  component FPGA_Motor_handler_inst_3_dmux_1xn_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC;
    sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component FPGA_Motor_handler_inst_3_dmux_1xn_0_0;
  signal pwm_block_pwm : STD_LOGIC;
  signal signed_to_absolute_i_0_a_val : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal signed_to_absolute_i_0_o_sign : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst:sw_0:sw_1, CLK_DOMAIN FPGA_Main_task_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
dmux_1xn_0: component FPGA_Motor_handler_inst_3_dmux_1xn_0_0
     port map (
      clk => clk,
      en => en,
      i => pwm_block_pwm,
      o(1 downto 0) => o(1 downto 0),
      rst => rst,
      sel(0) => signed_to_absolute_i_0_o_sign
    );
pwm_block: component FPGA_Motor_handler_inst_3_pwm_block_0
     port map (
      clk => clk,
      duty_cycle(9 downto 0) => signed_to_absolute_i_0_a_val(9 downto 0),
      en => en,
      pwm => pwm_block_pwm,
      rst => rst
    );
signed_to_absolute_i_0: component FPGA_Motor_handler_inst_3_signed_to_absolute_i_0_0
     port map (
      a_val(9 downto 0) => signed_to_absolute_i_0_a_val(9 downto 0),
      clk => clk,
      en => en,
      o_sign => signed_to_absolute_i_0_o_sign,
      rst => rst,
      val(10 downto 0) => i(10 downto 0)
    );
end STRUCTURE;
