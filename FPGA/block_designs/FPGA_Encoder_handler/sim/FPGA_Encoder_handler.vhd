--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Apr 23 19:02:28 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_Encoder_handler.bd
--Design      : FPGA_Encoder_handler
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Encoder_handler is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    max : out STD_LOGIC;
    position : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of FPGA_Encoder_handler : entity is "FPGA_Encoder_handler,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FPGA_Encoder_handler,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of FPGA_Encoder_handler : entity is "FPGA_Encoder_handler.hwdef";
end FPGA_Encoder_handler;

architecture STRUCTURE of FPGA_Encoder_handler is
  component FPGA_Encoder_handler_counter_nbit_0_0 is
  port (
    cnt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    done : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    dir : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component FPGA_Encoder_handler_counter_nbit_0_0;
  component FPGA_Encoder_handler_encoder_direction_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    rst : in STD_LOGIC;
    pulse : out STD_LOGIC;
    dir : out STD_LOGIC
  );
  end component FPGA_Encoder_handler_encoder_direction_0_0;
  component FPGA_Encoder_handler_one_shot_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC
  );
  end component FPGA_Encoder_handler_one_shot_0_0;
  signal encoder_direction_0_dir : STD_LOGIC;
  signal encoder_direction_0_pulse : STD_LOGIC;
  signal one_shot_0_o : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rs:rst, CLK_DOMAIN FPGA_Encoder_handler_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
counter_nbit: component FPGA_Encoder_handler_counter_nbit_0_0
     port map (
      clk => clk,
      cnt(15 downto 0) => position(15 downto 0),
      dir => encoder_direction_0_dir,
      done => max,
      en => one_shot_0_o,
      rst => rst
    );
encoder_direction: component FPGA_Encoder_handler_encoder_direction_0_0
     port map (
      a => a,
      b => b,
      clk => clk,
      dir => encoder_direction_0_dir,
      en => en,
      pulse => encoder_direction_0_pulse,
      rst => rst
    );
one_shot: component FPGA_Encoder_handler_one_shot_0_0
     port map (
      clk => clk,
      en => en,
      i => encoder_direction_0_pulse,
      o => one_shot_0_o,
      rst => rst
    );
end STRUCTURE;
