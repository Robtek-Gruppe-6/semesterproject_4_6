--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Mar 19 16:22:08 2025
--Host        : Lil_spkkis_pad running 64-bit major release  (build 9200)
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
    o_0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_motor_encoders : entity is "design_motor_encoders,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_motor_encoders,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_motor_encoders : entity is "design_motor_encoders.hwdef";
end design_motor_encoders;

architecture STRUCTURE of design_motor_encoders is
  component design_motor_encoders_encoder_direction_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    pulse : out STD_LOGIC;
    dir : out STD_LOGIC
  );
  end component design_motor_encoders_encoder_direction_0_0;
  component design_motor_encoders_clock_counter_0_0 is
  port (
    pulse : in STD_LOGIC;
    clk : in STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_motor_encoders_clock_counter_0_0;
  component design_motor_encoders_sim_clk_gen_0_1 is
  port (
    clk : out STD_LOGIC;
    sync_rst : out STD_LOGIC
  );
  end component design_motor_encoders_sim_clk_gen_0_1;
  component design_motor_encoders_div_gen_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_divisor_tvalid : in STD_LOGIC;
    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_dividend_tvalid : in STD_LOGIC;
    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component design_motor_encoders_div_gen_0_0;
  component design_motor_encoders_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_motor_encoders_xlconstant_0_1;
  component design_motor_encoders_xlconstant_0_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_motor_encoders_xlconstant_0_2;
  component design_motor_encoders_combiner_0_0 is
  port (
    h : in STD_LOGIC_VECTOR ( 0 to 0 );
    l : in STD_LOGIC_VECTOR ( 14 downto 0 );
    o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  end component design_motor_encoders_combiner_0_0;
  signal clock_counter_0_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal div_gen_0_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal encoder_direction_0_dir : STD_LOGIC;
  signal encoder_direction_0_pulse : STD_LOGIC;
  signal sim_clk_gen_0_clk : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_div_gen_0_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_div_gen_0_m_axis_dout_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_sim_clk_gen_0_sync_rst_UNCONNECTED : STD_LOGIC;
begin
clock_counter_0: component design_motor_encoders_clock_counter_0_0
     port map (
      clk => sim_clk_gen_0_clk,
      cnt(31 downto 0) => clock_counter_0_cnt(31 downto 0),
      pulse => encoder_direction_0_pulse
    );
combiner_0: component design_motor_encoders_combiner_0_0
     port map (
      clk => sim_clk_gen_0_clk,
      h(0) => encoder_direction_0_dir,
      l(14 downto 0) => div_gen_0_m_axis_dout_tdata(14 downto 0),
      o(15 downto 0) => o_0(15 downto 0)
    );
div_gen_0: component design_motor_encoders_div_gen_0_0
     port map (
      aclk => sim_clk_gen_0_clk,
      m_axis_dout_tdata(63 downto 0) => div_gen_0_m_axis_dout_tdata(63 downto 0),
      m_axis_dout_tuser(0) => NLW_div_gen_0_m_axis_dout_tuser_UNCONNECTED(0),
      m_axis_dout_tvalid => NLW_div_gen_0_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_dividend_tdata(31 downto 0) => xlconstant_1_dout(31 downto 0),
      s_axis_dividend_tvalid => xlconstant_0_dout(0),
      s_axis_divisor_tdata(31 downto 0) => clock_counter_0_cnt(31 downto 0),
      s_axis_divisor_tvalid => xlconstant_0_dout(0)
    );
encoder_direction_0: component design_motor_encoders_encoder_direction_0_0
     port map (
      a => a_0,
      b => b_0,
      clk => sim_clk_gen_0_clk,
      dir => encoder_direction_0_dir,
      pulse => encoder_direction_0_pulse
    );
sim_clk_gen_0: component design_motor_encoders_sim_clk_gen_0_1
     port map (
      clk => sim_clk_gen_0_clk,
      sync_rst => NLW_sim_clk_gen_0_sync_rst_UNCONNECTED
    );
xlconstant_0: component design_motor_encoders_xlconstant_0_2
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component design_motor_encoders_xlconstant_0_1
     port map (
      dout(31 downto 0) => xlconstant_1_dout(31 downto 0)
    );
end STRUCTURE;
