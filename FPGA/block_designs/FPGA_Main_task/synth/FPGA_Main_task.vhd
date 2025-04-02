--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Apr  2 14:25:21 2025
--Host        : Lil_spkkis_pad running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_Main_task.bd
--Design      : FPGA_Main_task
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Main_task is
  port (
    clk : in STD_LOGIC;
    encoder_1a : in STD_LOGIC;
    encoder_1b : in STD_LOGIC;
    encoder_2a : in STD_LOGIC;
    encoder_2b : in STD_LOGIC;
    motor1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    motor2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    motor_en : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sw_0 : in STD_LOGIC;
    sw_1 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of FPGA_Main_task : entity is "FPGA_Main_task,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FPGA_Main_task,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=18,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=14,numPkgbdBlks=4,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of FPGA_Main_task : entity is "FPGA_Main_task.hwdef";
end FPGA_Main_task;

architecture STRUCTURE of FPGA_Main_task is
  component FPGA_Encoder_handler_inst_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    max : out STD_LOGIC;
    position : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC
  );
  end component FPGA_Encoder_handler_inst_0;
  component FPGA_Motor_handler_inst_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC
  );
  end component FPGA_Motor_handler_inst_0;
  component FPGA_Encoder_handler_inst_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    max : out STD_LOGIC;
    position : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC
  );
  end component FPGA_Encoder_handler_inst_1;
  component FPGA_Motor_handler_inst_3 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC
  );
  end component FPGA_Motor_handler_inst_3;
  component FPGA_Main_task_n_to_m_splitter_0_0 is
  port (
    i : in STD_LOGIC_VECTOR ( 0 to 0 );
    o_h : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_l : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FPGA_Main_task_n_to_m_splitter_0_0;
  component FPGA_Main_task_combiner_0_0 is
  port (
    h : in STD_LOGIC_VECTOR ( 0 to 0 );
    l : in STD_LOGIC_VECTOR ( 0 to 0 );
    o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component FPGA_Main_task_combiner_0_0;
  signal n_to_m_splitter_0_o_h : STD_LOGIC_VECTOR ( 0 to 0 );
  signal n_to_m_splitter_0_o_l : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_FPGA_Encoder_handler_1_max_UNCONNECTED : STD_LOGIC;
  signal NLW_FPGA_Encoder_handler_1_position_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_FPGA_Encoder_handler_2_max_UNCONNECTED : STD_LOGIC;
  signal NLW_FPGA_Encoder_handler_2_position_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET sw_0, CLK_DOMAIN FPGA_Main_task_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of sw_0 : signal is "xilinx.com:signal:reset:1.0 RST.SW_0 RST";
  attribute X_INTERFACE_PARAMETER of sw_0 : signal is "XIL_INTERFACENAME RST.SW_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
FPGA_Encoder_handler_1: component FPGA_Encoder_handler_inst_0
     port map (
      a => encoder_1a,
      b => encoder_1b,
      clk => clk,
      en => sw_1,
      max => NLW_FPGA_Encoder_handler_1_max_UNCONNECTED,
      position(15 downto 0) => NLW_FPGA_Encoder_handler_1_position_UNCONNECTED(15 downto 0),
      rst => sw_0
    );
FPGA_Encoder_handler_2: component FPGA_Encoder_handler_inst_1
     port map (
      a => encoder_2a,
      b => encoder_2b,
      clk => clk,
      en => sw_1,
      max => NLW_FPGA_Encoder_handler_2_max_UNCONNECTED,
      position(15 downto 0) => NLW_FPGA_Encoder_handler_2_position_UNCONNECTED(15 downto 0),
      rst => sw_0
    );
FPGA_Motor_handler_1: component FPGA_Motor_handler_inst_0
     port map (
      clk => clk,
      en => sw_1,
      i(11 downto 0) => B"000000000000",
      o(1 downto 0) => motor1(1 downto 0),
      rst => sw_0
    );
FPGA_Motor_handler_2: component FPGA_Motor_handler_inst_3
     port map (
      clk => clk,
      en => sw_1,
      i(11 downto 0) => B"000000000000",
      o(1 downto 0) => motor2(1 downto 0),
      rst => sw_0
    );
combiner_0: component FPGA_Main_task_combiner_0_0
     port map (
      h(0) => n_to_m_splitter_0_o_h(0),
      l(0) => n_to_m_splitter_0_o_l(0),
      o(1 downto 0) => motor_en(1 downto 0)
    );
n_to_m_splitter_0: component FPGA_Main_task_n_to_m_splitter_0_0
     port map (
      i(0) => sw_1,
      o_h(0) => n_to_m_splitter_0_o_h(0),
      o_l(0) => n_to_m_splitter_0_o_l(0)
    );
end STRUCTURE;
