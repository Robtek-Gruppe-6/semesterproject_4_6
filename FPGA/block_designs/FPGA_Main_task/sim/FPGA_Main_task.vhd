--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed May  7 17:27:19 2025
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
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ck_miso : out STD_LOGIC;
    ck_mosi : in STD_LOGIC;
    ck_sck : in STD_LOGIC;
    ck_ss : in STD_LOGIC;
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
  attribute core_generation_info : string;
  attribute core_generation_info of FPGA_Main_task : entity is "FPGA_Main_task,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FPGA_Main_task,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=34,numReposBlks=30,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=27,numPkgbdBlks=4,bdsource=USER,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of FPGA_Main_task : entity is "FPGA_Main_task.hwdef";
end FPGA_Main_task;

architecture STRUCTURE of FPGA_Main_task is
  component FPGA_Encoder_handler_inst_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    max : out STD_LOGIC;
    position : out STD_LOGIC_VECTOR ( 14 downto 0 );
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
    position : out STD_LOGIC_VECTOR ( 14 downto 0 );
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
  component FPGA_Main_task_combiner_0_0 is
  port (
    h : in STD_LOGIC_VECTOR ( 0 to 0 );
    l : in STD_LOGIC_VECTOR ( 0 to 0 );
    o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component FPGA_Main_task_combiner_0_0;
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
  component FPGA_Main_task_n_to_m_splitter_1_0 is
  port (
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_h : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_l : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component FPGA_Main_task_n_to_m_splitter_1_0;
  component FPGA_Main_task_busmux_2x1_1_0 is
  port (
    input_1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    input_2 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component FPGA_Main_task_busmux_2x1_1_0;
  component FPGA_Main_task_busdmux_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_out_1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_out_2 : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component FPGA_Main_task_busdmux_0_0;
  component FPGA_Main_task_SPI_slave_block_0_1 is
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
  end component FPGA_Main_task_SPI_slave_block_0_1;
  component FPGA_Main_task_combiner_1_0 is
  port (
    h : in STD_LOGIC_VECTOR ( 0 to 0 );
    l : in STD_LOGIC_VECTOR ( 14 downto 0 );
    o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component FPGA_Main_task_combiner_1_0;
  component FPGA_Main_task_d_flip_flop_0_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component FPGA_Main_task_d_flip_flop_0_0;
  component FPGA_Main_task_not_gate_0_0 is
  port (
    i : in STD_LOGIC;
    o : out STD_LOGIC
  );
  end component FPGA_Main_task_not_gate_0_0;
  component FPGA_Main_task_dlatch_0_0 is
  port (
    clk : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 14 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component FPGA_Main_task_dlatch_0_0;
  component FPGA_Main_task_dlatch_0_1 is
  port (
    clk : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 14 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component FPGA_Main_task_dlatch_0_1;
  component FPGA_Main_task_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FPGA_Main_task_xlconstant_0_0;
  component FPGA_Main_task_busmux_2x1_0_0 is
  port (
    input_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    input_2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component FPGA_Main_task_busmux_2x1_0_0;
  component FPGA_Main_task_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FPGA_Main_task_xlconstant_1_0;
  component FPGA_Main_task_man_auto_motor1_0 is
  port (
    input_1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    input_2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component FPGA_Main_task_man_auto_motor1_0;
  component FPGA_Main_task_manuel_mode_block_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    motor1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    motor2 : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component FPGA_Main_task_manuel_mode_block_0_0;
  component FPGA_Main_task_not_gate_1_0 is
  port (
    i : in STD_LOGIC;
    o : out STD_LOGIC
  );
  end component FPGA_Main_task_not_gate_1_0;
  component FPGA_Main_task_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component FPGA_Main_task_xlconstant_1_1;
  signal FPGA_Encoder_handler_1_position : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal FPGA_Encoder_handler_2_position : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal SPI_slave_block_0_busy : STD_LOGIC;
  signal SPI_slave_block_0_rx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal busdmux_0_data_out_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal busdmux_0_data_out_2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal busmux_2x1_0_o : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal busmux_2x1_1_o : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal combiner_1_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal d_flip_flop_0_Q : STD_LOGIC;
  signal dlatch_0_o : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal dlatch_1_o : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal man_auto_motor2_o : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal manuel_mode_block_0_motor1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal manuel_mode_block_0_motor2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal n_to_m_splitter_1_o_h : STD_LOGIC_VECTOR ( 0 to 0 );
  signal n_to_m_splitter_1_o_l : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal not_gate_0_o : STD_LOGIC;
  signal not_gate_1_o : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_FPGA_Encoder_handler_1_max_UNCONNECTED : STD_LOGIC;
  signal NLW_FPGA_Encoder_handler_2_max_UNCONNECTED : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of ck_sck : signal is "xilinx.com:signal:clock:1.0 CLK.CK_SCK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ck_sck : signal is "XIL_INTERFACENAME CLK.CK_SCK, CLK_DOMAIN FPGA_Main_task_ck_sck, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET sw_1, CLK_DOMAIN FPGA_Main_task_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of sw_1 : signal is "xilinx.com:signal:reset:1.0 RST.SW_1 RST";
  attribute x_interface_parameter of sw_1 : signal is "XIL_INTERFACENAME RST.SW_1, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
FPGA_Encoder_handler_1: component FPGA_Encoder_handler_inst_0
     port map (
      a => encoder_1a,
      b => encoder_1b,
      clk => clk_0_1,
      en => sw_0,
      max => NLW_FPGA_Encoder_handler_1_max_UNCONNECTED,
      position(14 downto 0) => FPGA_Encoder_handler_1_position(14 downto 0),
      rst => sw_1
    );
FPGA_Encoder_handler_2: component FPGA_Encoder_handler_inst_1
     port map (
      a => encoder_2a,
      b => encoder_2b,
      clk => clk_0_1,
      en => sw_0,
      max => NLW_FPGA_Encoder_handler_2_max_UNCONNECTED,
      position(14 downto 0) => FPGA_Encoder_handler_2_position(14 downto 0),
      rst => sw_1
    );
FPGA_Motor_handler_1: component FPGA_Motor_handler_inst_0
     port map (
      clk => clk_0_1,
      en => xlconstant_1_dout(0),
      i(10 downto 0) => busmux_2x1_0_o(10 downto 0),
      o(1 downto 0) => motor1(1 downto 0),
      rst => sw_1
    );
FPGA_Motor_handler_2: component FPGA_Motor_handler_inst_3
     port map (
      clk => clk_0_1,
      en => xlconstant_1_dout(0),
      i(10 downto 0) => man_auto_motor2_o(10 downto 0),
      o(1 downto 0) => motor2(1 downto 0),
      rst => sw_1
    );
SPI_slave_block: component FPGA_Main_task_SPI_slave_block_0_1
     port map (
      busy => SPI_slave_block_0_busy,
      cpha => xlconstant_0_dout(0),
      cpol => xlconstant_0_dout(0),
      miso => ck_miso,
      mosi => ck_mosi,
      read_en => sw_0,
      rst => sw_1,
      rx(15 downto 0) => SPI_slave_block_0_rx(15 downto 0),
      sck => ck_sck,
      ss => ck_ss,
      tx(15 downto 0) => combiner_1_o(15 downto 0)
    );
clock_divider_0: component FPGA_Main_task_clock_divider_0_0
     port map (
      clk => clk,
      clk_out => clk_0_1,
      en => xlconstant_2_dout(0),
      rst => sw_1
    );
encoder_latch1: component FPGA_Main_task_dlatch_0_0
     port map (
      clk => clk_0_1,
      en => not_gate_0_o,
      i(14 downto 0) => FPGA_Encoder_handler_1_position(14 downto 0),
      o(14 downto 0) => dlatch_0_o(14 downto 0),
      rst => sw_1
    );
encoder_latch2: component FPGA_Main_task_dlatch_0_1
     port map (
      clk => clk_0_1,
      en => not_gate_0_o,
      i(14 downto 0) => FPGA_Encoder_handler_2_position(14 downto 0),
      o(14 downto 0) => dlatch_1_o(14 downto 0),
      rst => sw_1
    );
encoder_selctor: component FPGA_Main_task_d_flip_flop_0_0
     port map (
      D => not_gate_0_o,
      Q => d_flip_flop_0_Q,
      clk => clk_0_1,
      en => sw_0,
      rst => sw_1
    );
encoder_selector_mux: component FPGA_Main_task_busmux_2x1_1_0
     port map (
      input_1(14 downto 0) => dlatch_0_o(14 downto 0),
      input_2(14 downto 0) => dlatch_1_o(14 downto 0),
      o(14 downto 0) => busmux_2x1_1_o(14 downto 0),
      s => d_flip_flop_0_Q
    );
man_auto_motor1: component FPGA_Main_task_busmux_2x1_0_0
     port map (
      input_1(10 downto 0) => manuel_mode_block_0_motor1(10 downto 0),
      input_2(10 downto 0) => busdmux_0_data_out_1(10 downto 0),
      o(10 downto 0) => busmux_2x1_0_o(10 downto 0),
      s => sw_0
    );
man_auto_motor2: component FPGA_Main_task_man_auto_motor1_0
     port map (
      input_1(10 downto 0) => manuel_mode_block_0_motor2(10 downto 0),
      input_2(10 downto 0) => busdmux_0_data_out_2(10 downto 0),
      o(10 downto 0) => man_auto_motor2_o(10 downto 0),
      s => sw_0
    );
manuel_mode_block: component FPGA_Main_task_manuel_mode_block_0_0
     port map (
      btn(3 downto 0) => btn(3 downto 0),
      clk => clk_0_1,
      en => not_gate_1_o,
      motor1(10 downto 0) => manuel_mode_block_0_motor1(10 downto 0),
      motor2(10 downto 0) => manuel_mode_block_0_motor2(10 downto 0),
      rst => sw_1
    );
motor_en_RnM: component FPGA_Main_task_combiner_0_0
     port map (
      h(0) => xlconstant_1_dout(0),
      l(0) => xlconstant_1_dout(0),
      o(1 downto 0) => motor_en(1 downto 0)
    );
motor_selector: component FPGA_Main_task_busdmux_0_0
     port map (
      data_in(10 downto 0) => n_to_m_splitter_1_o_l(10 downto 0),
      data_out_1(10 downto 0) => busdmux_0_data_out_1(10 downto 0),
      data_out_2(10 downto 0) => busdmux_0_data_out_2(10 downto 0),
      sel(0) => n_to_m_splitter_1_o_h(0)
    );
not_en: component FPGA_Main_task_not_gate_1_0
     port map (
      i => sw_0,
      o => not_gate_1_o
    );
not_gate_0: component FPGA_Main_task_not_gate_0_0
     port map (
      i => SPI_slave_block_0_busy,
      o => not_gate_0_o
    );
selector_combine: component FPGA_Main_task_combiner_1_0
     port map (
      h(0) => d_flip_flop_0_Q,
      l(14 downto 0) => busmux_2x1_1_o(14 downto 0),
      o(15 downto 0) => combiner_1_o(15 downto 0)
    );
selector_split: component FPGA_Main_task_n_to_m_splitter_1_0
     port map (
      i(15 downto 0) => SPI_slave_block_0_rx(15 downto 0),
      o_h(0) => n_to_m_splitter_1_o_h(0),
      o_l(10 downto 0) => n_to_m_splitter_1_o_l(10 downto 0)
    );
xlconstant_0: component FPGA_Main_task_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component FPGA_Main_task_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlconstant_2: component FPGA_Main_task_xlconstant_1_1
     port map (
      dout(0) => xlconstant_2_dout(0)
    );
end STRUCTURE;
