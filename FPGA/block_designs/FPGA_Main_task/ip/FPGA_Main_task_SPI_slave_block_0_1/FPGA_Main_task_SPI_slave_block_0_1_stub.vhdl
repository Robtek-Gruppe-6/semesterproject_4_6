-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed May  7 16:08:22 2025
-- Host        : LAPTOP-FABER running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Bluex/Desktop/FPGA_Programming/semesterproject_4_6/FPGA/block_designs/FPGA_Main_task/ip/FPGA_Main_task_SPI_slave_block_0_1/FPGA_Main_task_SPI_slave_block_0_1_stub.vhdl
-- Design      : FPGA_Main_task_SPI_slave_block_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FPGA_Main_task_SPI_slave_block_0_1 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FPGA_Main_task_SPI_slave_block_0_1 : entity is "FPGA_Main_task_SPI_slave_block_0_1,SPI_slave_block,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of FPGA_Main_task_SPI_slave_block_0_1 : entity is "FPGA_Main_task_SPI_slave_block_0_1,SPI_slave_block,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SPI_slave_block,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,BUS_WIDTH=16}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of FPGA_Main_task_SPI_slave_block_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of FPGA_Main_task_SPI_slave_block_0_1 : entity is "module_ref";
end FPGA_Main_task_SPI_slave_block_0_1;

architecture stub of FPGA_Main_task_SPI_slave_block_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "cpol,cpha,sck,ss,mosi,miso,read_en,tx[15:0],rx[15:0],busy,rst";
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of rst : signal is "slave rst";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "SPI_slave_block,Vivado 2024.2";
begin
end;
