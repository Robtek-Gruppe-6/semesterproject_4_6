--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Apr 23 19:02:28 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
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
    ck_miso : out STD_LOGIC;
    ck_mosi : in STD_LOGIC;
    ck_sck : in STD_LOGIC;
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
  attribute CORE_GENERATION_INFO of FPGA_Main_task : entity is "FPGA_Main_task,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FPGA_Main_task,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=29,numReposBlks=24,numNonXlnxBlks=0,numHierBlks=5,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=24,numPkgbdBlks=5,bdsource=USER,synth_mode=Hierarchical}";
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
    i : in STD_LOGIC_VECTOR ( 10 downto 0 );
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
  component FPGA_SPI_Handler_inst_0 is
  port (
    SPI_rx : in STD_LOGIC;
    SPI_rx_intr : out STD_LOGIC;
    SPI_tx : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    encoder_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    encoder_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    motor_1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    motor_2 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rst : in STD_LOGIC
  );
  end component FPGA_SPI_Handler_inst_0;
  component FPGA_Motor_handler_inst_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 10 downto 0 );
    o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC
  );
  end component FPGA_Motor_handler_inst_0;
  component FPGA_Main_task_clock_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component FPGA_Main_task_clock_divider_0_0;
  signal FPGA_Encoder_handler_2_position : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal FPGA_SPI_Handler_0_motor_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal FPGA_SPI_Handler_0_motor_2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal data_to_send_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal n_to_m_splitter_0_o_h : STD_LOGIC_VECTOR ( 0 to 0 );
  signal n_to_m_splitter_0_o_l : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_FPGA_Encoder_handler_1_max_UNCONNECTED : STD_LOGIC;
  signal NLW_FPGA_Encoder_handler_2_max_UNCONNECTED : STD_LOGIC;
  signal NLW_FPGA_SPI_Handler_0_SPI_rx_intr_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ck_sck : signal is "xilinx.com:signal:clock:1.0 CLK.CK_SCK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ck_sck : signal is "XIL_INTERFACENAME CLK.CK_SCK, ASSOCIATED_RESET sw_0, CLK_DOMAIN FPGA_Main_task_ck_sck, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET sw_0, CLK_DOMAIN FPGA_Main_task_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of sw_0 : signal is "xilinx.com:signal:reset:1.0 RST.SW_0 RST";
  attribute X_INTERFACE_PARAMETER of sw_0 : signal is "XIL_INTERFACENAME RST.SW_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
FPGA_Encoder_handler_1: component FPGA_Encoder_handler_inst_0
     port map (
      a => encoder_1a,
      b => encoder_1b,
      clk => clk_0_1,
      en => sw_1,
      max => NLW_FPGA_Encoder_handler_1_max_UNCONNECTED,
      position(15 downto 0) => data_to_send_1(15 downto 0),
      rst => sw_0
    );
FPGA_Encoder_handler_2: component FPGA_Encoder_handler_inst_1
     port map (
      a => encoder_2a,
      b => encoder_2b,
      clk => clk_0_1,
      en => sw_1,
      max => NLW_FPGA_Encoder_handler_2_max_UNCONNECTED,
      position(15 downto 0) => FPGA_Encoder_handler_2_position(15 downto 0),
      rst => sw_0
    );
FPGA_Motor_handler_1: component FPGA_Motor_handler_inst_0
     port map (
      clk => clk_0_1,
      en => sw_1,
      i(10 downto 0) => FPGA_SPI_Handler_0_motor_1(10 downto 0),
      o(1 downto 0) => motor1(1 downto 0),
      rst => sw_0
    );
FPGA_Motor_handler_2: component FPGA_Motor_handler_inst_3
     port map (
      clk => clk_0_1,
      en => sw_1,
      i(10 downto 0) => FPGA_SPI_Handler_0_motor_2(10 downto 0),
      o(1 downto 0) => motor2(1 downto 0),
      rst => sw_0
    );
FPGA_SPI_Handler_0: component FPGA_SPI_Handler_inst_0
     port map (
      SPI_rx => ck_mosi,
      SPI_rx_intr => NLW_FPGA_SPI_Handler_0_SPI_rx_intr_UNCONNECTED,
      SPI_tx => ck_miso,
      clk => ck_sck,
      en => sw_1,
      encoder_1(15 downto 0) => data_to_send_1(15 downto 0),
      encoder_2(15 downto 0) => FPGA_Encoder_handler_2_position(15 downto 0),
      motor_1(10 downto 0) => FPGA_SPI_Handler_0_motor_1(10 downto 0),
      motor_2(10 downto 0) => FPGA_SPI_Handler_0_motor_2(10 downto 0),
      rst => sw_0
    );
clock_divider_0: component FPGA_Main_task_clock_divider_0_0
     port map (
      clk => clk,
      clk_out => clk_0_1,
      en => sw_1,
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
