-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:SPI_slave_block:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY FPGA_Main_task_SPI_slave_block_0_1 IS
  PORT (
    cpol : IN STD_LOGIC;
    cpha : IN STD_LOGIC;
    sck : IN STD_LOGIC;
    ss : IN STD_LOGIC;
    mosi : IN STD_LOGIC;
    miso : OUT STD_LOGIC;
    read_en : IN STD_LOGIC;
    tx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    rx : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    busy : OUT STD_LOGIC;
    rst : IN STD_LOGIC
  );
END FPGA_Main_task_SPI_slave_block_0_1;

ARCHITECTURE FPGA_Main_task_SPI_slave_block_0_1_arch OF FPGA_Main_task_SPI_slave_block_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF FPGA_Main_task_SPI_slave_block_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT SPI_slave_block IS
    GENERIC (
      BUS_WIDTH : INTEGER
    );
    PORT (
      cpol : IN STD_LOGIC;
      cpha : IN STD_LOGIC;
      sck : IN STD_LOGIC;
      ss : IN STD_LOGIC;
      mosi : IN STD_LOGIC;
      miso : OUT STD_LOGIC;
      read_en : IN STD_LOGIC;
      tx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      rx : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      busy : OUT STD_LOGIC;
      rst : IN STD_LOGIC
    );
  END COMPONENT SPI_slave_block;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF FPGA_Main_task_SPI_slave_block_0_1_arch: ARCHITECTURE IS "SPI_slave_block,Vivado 2024.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF FPGA_Main_task_SPI_slave_block_0_1_arch : ARCHITECTURE IS "FPGA_Main_task_SPI_slave_block_0_1,SPI_slave_block,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF FPGA_Main_task_SPI_slave_block_0_1_arch: ARCHITECTURE IS "FPGA_Main_task_SPI_slave_block_0_1,SPI_slave_block,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SPI_slave_block,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,BUS_WIDTH=16}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF FPGA_Main_task_SPI_slave_block_0_1_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_MODE OF rst: SIGNAL IS "slave rst";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
BEGIN
  U0 : SPI_slave_block
    GENERIC MAP (
      BUS_WIDTH => 16
    )
    PORT MAP (
      cpol => cpol,
      cpha => cpha,
      sck => sck,
      ss => ss,
      mosi => mosi,
      miso => miso,
      read_en => read_en,
      tx => tx,
      rx => rx,
      busy => busy,
      rst => rst
    );
END FPGA_Main_task_SPI_slave_block_0_1_arch;
