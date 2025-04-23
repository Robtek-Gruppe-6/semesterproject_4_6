// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module FPGA_Main_task (
  clk,
  sw_1,
  sw_0,
  encoder_1a,
  encoder_1b,
  encoder_2a,
  encoder_2b,
  motor2,
  motor1,
  motor_en,
  ck_mosi,
  ck_miso,
  ck_sck
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Main_task_clk, ASSOCIATED_RESET sw_0, INSERT_VIP 0" *)
  input clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input sw_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SW_0 RST" *)
  (* X_INTERFACE_MODE = "slave RST.SW_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SW_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input sw_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input encoder_1a;
  (* X_INTERFACE_IGNORE = "true" *)
  input encoder_1b;
  (* X_INTERFACE_IGNORE = "true" *)
  input encoder_2a;
  (* X_INTERFACE_IGNORE = "true" *)
  input encoder_2b;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]motor2;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]motor1;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]motor_en;
  (* X_INTERFACE_IGNORE = "true" *)
  input ck_mosi;
  (* X_INTERFACE_IGNORE = "true" *)
  output ck_miso;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CK_SCK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CK_SCK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CK_SCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN FPGA_Main_task_ck_sck, ASSOCIATED_RESET sw_0, INSERT_VIP 0" *)
  input ck_sck;

  // stub module has no contents

endmodule
