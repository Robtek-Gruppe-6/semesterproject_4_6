// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module FPGA_SPI_Handler (
  clk,
  en,
  SPI_tx,
  motor_1,
  motor_2,
  encoder_1,
  encoder_2,
  SPI_rx,
  rst,
  SPI_rx_intr
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_SPI_Handler_clk_0, ASSOCIATED_RESET rst, INSERT_VIP 0" *)
  input clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input en;
  (* X_INTERFACE_IGNORE = "true" *)
  output SPI_tx;
  (* X_INTERFACE_IGNORE = "true" *)
  output [10:0]motor_1;
  (* X_INTERFACE_IGNORE = "true" *)
  output [10:0]motor_2;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]encoder_1;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]encoder_2;
  (* X_INTERFACE_IGNORE = "true" *)
  input SPI_rx;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *)
  (* X_INTERFACE_MODE = "slave RST.RST" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.SPI_RX_INTR INTERRUPT" *)
  (* X_INTERFACE_MODE = "master INTR.SPI_RX_INTR" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.SPI_RX_INTR, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
  output SPI_rx_intr;

  // stub module has no contents

endmodule
