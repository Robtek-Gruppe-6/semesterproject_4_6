--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Mar 26 15:23:46 2025
--Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
--Command     : generate_target design_motor_encoders.bd
--Design      : design_motor_encoders
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_motor_encoders is
  port (
    a_0 : in STD_LOGIC;
    b_0 : in STD_LOGIC;
    clk_0 : in STD_LOGIC;
    cnt_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    done_0 : out STD_LOGIC;
    en_0 : in STD_LOGIC;
    rst_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_motor_encoders : entity is "design_motor_encoders,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_motor_encoders,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_motor_encoders : entity is "design_motor_encoders.hwdef";
end design_motor_encoders;

architecture STRUCTURE of design_motor_encoders is
  component design_motor_encoders_encoder_direction_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    rst : in STD_LOGIC;
    pulse : out STD_LOGIC;
    dir : out STD_LOGIC
  );
  end component design_motor_encoders_encoder_direction_0_0;
  component design_motor_encoders_counter_nbit_0_0 is
  port (
    cnt : out STD_LOGIC_VECTOR ( 15 downto 0 );
    done : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    dir : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component design_motor_encoders_counter_nbit_0_0;
  component design_motor_encoders_one_shot_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    i : in STD_LOGIC;
    rst : in STD_LOGIC;
    o : out STD_LOGIC
  );
  end component design_motor_encoders_one_shot_0_0;
  signal encoder_direction_0_dir : STD_LOGIC;
  signal encoder_direction_0_pulse : STD_LOGIC;
  signal one_shot_0_o : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_motor_encoders_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute X_INTERFACE_PARAMETER of rst_0 : signal is "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
counter_nbit_0: component design_motor_encoders_counter_nbit_0_0
     port map (
      clk => clk_0,
      cnt(15 downto 0) => cnt_0(15 downto 0),
      dir => encoder_direction_0_dir,
      done => done_0,
      en => one_shot_0_o,
      rst => rst_0
    );
encoder_direction_0: component design_motor_encoders_encoder_direction_0_0
     port map (
      a => a_0,
      b => b_0,
      clk => clk_0,
      dir => encoder_direction_0_dir,
      en => en_0,
      pulse => encoder_direction_0_pulse,
      rst => rst_0
    );
one_shot_0: component design_motor_encoders_one_shot_0_0
     port map (
      clk => clk_0,
      en => en_0,
      i => encoder_direction_0_pulse,
      o => one_shot_0_o,
      rst => rst_0
    );
end STRUCTURE;
