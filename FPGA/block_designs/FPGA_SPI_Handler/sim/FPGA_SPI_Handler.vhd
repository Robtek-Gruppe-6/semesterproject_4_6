--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Apr 23 11:11:47 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_SPI_Handler.bd
--Design      : FPGA_SPI_Handler
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_SPI_Handler is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of FPGA_SPI_Handler : entity is "FPGA_SPI_Handler,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FPGA_SPI_Handler,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of FPGA_SPI_Handler : entity is "FPGA_SPI_Handler.hwdef";
end FPGA_SPI_Handler;

architecture STRUCTURE of FPGA_SPI_Handler is
  component FPGA_SPI_Handler_SPI_rx_block_0_0 is
  port (
    clk : in STD_LOGIC;
    data_to_read : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    received_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    intr : out STD_LOGIC
  );
  end component FPGA_SPI_Handler_SPI_rx_block_0_0;
  component FPGA_SPI_Handler_busdmux_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_out_1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    data_out_2 : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component FPGA_SPI_Handler_busdmux_0_0;
  component FPGA_SPI_Handler_n_to_m_splitter_0_0 is
  port (
    i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o_h : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_l : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component FPGA_SPI_Handler_n_to_m_splitter_0_0;
  component FPGA_SPI_Handler_dlatch_0_0 is
  port (
    clk : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component FPGA_SPI_Handler_dlatch_0_0;
  component FPGA_SPI_Handler_dlatch_0_1 is
  port (
    clk : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component FPGA_SPI_Handler_dlatch_0_1;
  component FPGA_SPI_Handler_busmux_2x1_0_0 is
  port (
    input_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s : in STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component FPGA_SPI_Handler_busmux_2x1_0_0;
  component FPGA_SPI_Handler_d_flip_flop_1_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component FPGA_SPI_Handler_d_flip_flop_1_0;
  component FPGA_SPI_Handler_SPI_tx_block_2_0 is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    bit_out : out STD_LOGIC;
    done : out STD_LOGIC
  );
  end component FPGA_SPI_Handler_SPI_tx_block_2_0;
  component FPGA_SPI_Handler_combiner_0_0 is
  port (
    h : in STD_LOGIC_VECTOR ( 0 to 0 );
    l : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  end component FPGA_SPI_Handler_combiner_0_0;
  signal SPI_rx_block_0_received_data : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal busmux_2x1_0_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal combiner_0_o : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal d_flip_flop_1_Q : STD_LOGIC;
  signal dlatch_0_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dlatch_1_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal n_to_m_splitter_0_o_h : STD_LOGIC_VECTOR ( 0 to 0 );
  signal n_to_m_splitter_0_o_l : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal shifting_register_0_done : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SPI_rx_intr : signal is "xilinx.com:signal:interrupt:1.0 INTR.SPI_RX_INTR INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of SPI_rx_intr : signal is "XIL_INTERFACENAME INTR.SPI_RX_INTR, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN FPGA_SPI_Handler_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
SPI_rx_block_0: component FPGA_SPI_Handler_SPI_rx_block_0_0
     port map (
      clk => clk,
      data_to_read => SPI_rx,
      en => en,
      intr => SPI_rx_intr,
      received_data(11 downto 0) => SPI_rx_block_0_received_data(11 downto 0),
      rst => rst
    );
SPI_tx_block_0: component FPGA_SPI_Handler_SPI_tx_block_2_0
     port map (
      bit_out => SPI_tx,
      clk => clk,
      data_in(16 downto 0) => combiner_0_o(16 downto 0),
      done => shifting_register_0_done,
      en => en,
      rst => rst
    );
busdmux_0: component FPGA_SPI_Handler_busdmux_0_0
     port map (
      data_in(10 downto 0) => n_to_m_splitter_0_o_l(10 downto 0),
      data_out_1(10 downto 0) => motor_1(10 downto 0),
      data_out_2(10 downto 0) => motor_2(10 downto 0),
      sel(0) => n_to_m_splitter_0_o_h(0)
    );
busmux_2x1_0: component FPGA_SPI_Handler_busmux_2x1_0_0
     port map (
      input_1(15 downto 0) => dlatch_0_o(15 downto 0),
      input_2(15 downto 0) => dlatch_1_o(15 downto 0),
      o(15 downto 0) => busmux_2x1_0_o(15 downto 0),
      s => d_flip_flop_1_Q
    );
combiner_0: component FPGA_SPI_Handler_combiner_0_0
     port map (
      h(0) => d_flip_flop_1_Q,
      l(15 downto 0) => busmux_2x1_0_o(15 downto 0),
      o(16 downto 0) => combiner_0_o(16 downto 0)
    );
d_flip_flop_1: component FPGA_SPI_Handler_d_flip_flop_1_0
     port map (
      D => shifting_register_0_done,
      Q => d_flip_flop_1_Q,
      clk => clk,
      en => en,
      rst => rst
    );
dlatch_0: component FPGA_SPI_Handler_dlatch_0_0
     port map (
      clk => clk,
      en => shifting_register_0_done,
      i(15 downto 0) => encoder_1(15 downto 0),
      o(15 downto 0) => dlatch_0_o(15 downto 0),
      rst => rst
    );
dlatch_1: component FPGA_SPI_Handler_dlatch_0_1
     port map (
      clk => clk,
      en => shifting_register_0_done,
      i(15 downto 0) => encoder_2(15 downto 0),
      o(15 downto 0) => dlatch_1_o(15 downto 0),
      rst => rst
    );
n_to_m_splitter_0: component FPGA_SPI_Handler_n_to_m_splitter_0_0
     port map (
      i(11 downto 0) => SPI_rx_block_0_received_data(11 downto 0),
      o_h(0) => n_to_m_splitter_0_o_h(0),
      o_l(10 downto 0) => n_to_m_splitter_0_o_l(10 downto 0)
    );
end STRUCTURE;
