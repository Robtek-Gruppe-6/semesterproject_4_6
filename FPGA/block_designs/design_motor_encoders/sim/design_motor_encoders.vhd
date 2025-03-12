--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Wed Mar 12 13:15:29 2025
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
    clk_0 : in STD_LOGIC
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
    pulse : out STD_LOGIC;
    dir : out STD_LOGIC
  );
  end component design_motor_encoders_motor_encoders_0_0;
  component design_motor_encoders_system_ila_1_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_motor_encoders_system_ila_1_0;
  signal clk_0_1 : STD_LOGIC;
  signal motor_encoders_0_dir : STD_LOGIC;
  signal pulse : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_motor_encoders_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  clk_0_1 <= clk_0;
motor_encoders_0: component design_motor_encoders_motor_encoders_0_0
     port map (
      a => a_0,
      b => b_0,
      dir => motor_encoders_0_dir,
      pulse => pulse
    );
system_ila_1: component design_motor_encoders_system_ila_1_0
     port map (
      clk => clk_0_1,
      probe0(0) => pulse,
      probe1(0) => motor_encoders_0_dir
    );
end STRUCTURE;
