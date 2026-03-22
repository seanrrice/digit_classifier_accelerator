// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x0 : Control signals
//       bit 0  - ap_start (Read/Write/COH)
//       bit 1  - ap_done (Read/COR)
//       bit 2  - ap_idle (Read)
//       bit 3  - ap_ready (Read/COR)
//       bit 7  - auto_restart (Read/Write)
//       bit 9  - interrupt (Read)
//       others - reserved
// 0x4 : Global Interrupt Enable Register
//       bit 0  - Global Interrupt Enable (Read/Write)
//       others - reserved
// 0x8 : IP Interrupt Enable Register (Read/Write)
//       bit 0 - enable ap_done interrupt (Read/Write)
//       bit 1 - enable ap_ready interrupt (Read/Write)
//       others - reserved
// 0xc : IP Interrupt Status Register (Read/TOW)
//       bit 0 - ap_done (Read/TOW)
//       bit 1 - ap_ready (Read/TOW)
//       others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL 0x0
#define XKNN_ACCELERATOR_CONTROL_ADDR_GIE     0x4
#define XKNN_ACCELERATOR_CONTROL_ADDR_IER     0x8
#define XKNN_ACCELERATOR_CONTROL_ADDR_ISR     0xc

// control_r
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of X_test
//        bit 31~0 - X_test[31:0] (Read/Write)
// 0x14 : Data signal of X_test
//        bit 31~0 - X_test[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of X_train
//        bit 31~0 - X_train[31:0] (Read/Write)
// 0x20 : Data signal of X_train
//        bit 31~0 - X_train[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of y_train
//        bit 31~0 - y_train[31:0] (Read/Write)
// 0x2c : Data signal of y_train
//        bit 31~0 - y_train[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of y_test
//        bit 31~0 - y_test[31:0] (Read/Write)
// 0x38 : Data signal of y_test
//        bit 31~0 - y_test[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKNN_ACCELERATOR_CONTROL_R_ADDR_X_TEST_DATA  0x10
#define XKNN_ACCELERATOR_CONTROL_R_BITS_X_TEST_DATA  64
#define XKNN_ACCELERATOR_CONTROL_R_ADDR_X_TRAIN_DATA 0x1c
#define XKNN_ACCELERATOR_CONTROL_R_BITS_X_TRAIN_DATA 64
#define XKNN_ACCELERATOR_CONTROL_R_ADDR_Y_TRAIN_DATA 0x28
#define XKNN_ACCELERATOR_CONTROL_R_BITS_Y_TRAIN_DATA 64
#define XKNN_ACCELERATOR_CONTROL_R_ADDR_Y_TEST_DATA  0x34
#define XKNN_ACCELERATOR_CONTROL_R_BITS_Y_TEST_DATA  64

