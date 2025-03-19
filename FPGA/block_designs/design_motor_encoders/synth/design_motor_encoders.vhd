--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Mar 19 13:25:03 2025
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
    vel_0 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_motor_encoders : entity is "design_motor_encoders,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_motor_encoders,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_motor_encoders : entity is "design_motor_encoders.hwdef";
end design_motor_encoders;

architecture STRUCTURE of design_motor_encoders is
  component design_motor_encoders_motor_encoders_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    clk : in STD_LOGIC;
    vel : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_motor_encoders_motor_encoders_0_0;
  component design_motor_encoders_sim_clk_gen_0_0 is
  port (
    clk : out STD_LOGIC;
    sync_rst : out STD_LOGIC
  );
  end component design_motor_encoders_sim_clk_gen_0_0;
  signal sim_clk_gen_0_clk : STD_LOGIC;
  signal NLW_sim_clk_gen_0_sync_rst_UNCONNECTED : STD_LOGIC;
begin
motor_encoders_0: component design_motor_encoders_motor_encoders_0_0
     port map (
      a => a_0,
      b => b_0,
      clk => sim_clk_gen_0_clk,
      vel(15 downto 0) => vel_0(15 downto 0)
    );
sim_clk_gen_0: component design_motor_encoders_sim_clk_gen_0_0
     port map (
      clk => sim_clk_gen_0_clk,
      sync_rst => NLW_sim_clk_gen_0_sync_rst_UNCONNECTED
    );
end STRUCTURE;
