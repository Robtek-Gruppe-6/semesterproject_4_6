--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed May  7 17:27:20 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
--Command     : generate_target FPGA_Encoder_handler_inst_0.bd
--Design      : FPGA_Encoder_handler_inst_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FPGA_Encoder_handler_inst_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    max : out STD_LOGIC;
    position : out STD_LOGIC_VECTOR ( 14 downto 0 );
    rst : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of FPGA_Encoder_handler_inst_0 : entity is "FPGA_Encoder_handler_inst_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FPGA_Encoder_handler_inst_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=C_/Semesterprojekt/semesterproject_4_6/FPGA/block_designs/FPGA_Encoder_handler/FPGA_Encoder_handler.bd,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of FPGA_Encoder_handler_inst_0 : entity is "FPGA_Encoder_handler_inst_0.hwdef";
end FPGA_Encoder_handler_inst_0;

architecture STRUCTURE of FPGA_Encoder_handler_inst_0 is
  component FPGA_Encoder_handler_inst_0_counter_nbit_0 is
  port (
    cnt : out STD_LOGIC_VECTOR ( 14 downto 0 );
    done : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    dir : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component FPGA_Encoder_handler_inst_0_counter_nbit_0;
  component FPGA_Encoder_handler_inst_0_encoder_direction_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    rst : in STD_LOGIC;
    pulse : out STD_LOGIC;
    dir : out STD_LOGIC
  );
  end component FPGA_Encoder_handler_inst_0_encoder_direction_0;
  component FPGA_Encoder_handler_inst_0_one_shot_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC
  );
  end component FPGA_Encoder_handler_inst_0_one_shot_0;
  signal encoder_direction_0_dir : STD_LOGIC;
  signal encoder_direction_0_pulse : STD_LOGIC;
  signal one_shot_0_o : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rs:rst:sw_1, CLK_DOMAIN FPGA_Encoder_handler_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
counter_nbit: component FPGA_Encoder_handler_inst_0_counter_nbit_0
     port map (
      clk => clk,
      cnt(14 downto 0) => position(14 downto 0),
      dir => encoder_direction_0_dir,
      done => max,
      en => one_shot_0_o,
      rst => rst
    );
encoder_direction: component FPGA_Encoder_handler_inst_0_encoder_direction_0
     port map (
      a => a,
      b => b,
      clk => clk,
      dir => encoder_direction_0_dir,
      en => en,
      pulse => encoder_direction_0_pulse,
      rst => rst
    );
one_shot: component FPGA_Encoder_handler_inst_0_one_shot_0
     port map (
      clk => clk,
      en => en,
      i => encoder_direction_0_pulse,
      o => one_shot_0_o,
      rst => rst
    );
end STRUCTURE;
