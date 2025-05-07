// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module FPGA_Encoder_handler_inst_1 (
  a,
  b,
  clk,
  position,
  max,
  en,
  rst
);

  (* X_INTERFACE_IGNORE = "true" *)
  input a;
  (* X_INTERFACE_IGNORE = "true" *)
  input b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Encoder_handler_clk, ASSOCIATED_RESET rs:rst:sw_1, INSERT_VIP 0" *)
  input clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output [14:0]position;
  (* X_INTERFACE_IGNORE = "true" *)
  output max;
  (* X_INTERFACE_IGNORE = "true" *)
  input en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *)
  (* X_INTERFACE_MODE = "slave RST.RST" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input rst;

  // stub module has no contents

endmodule
