// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xknn_accelerator.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKnn_accelerator_CfgInitialize(XKnn_accelerator *InstancePtr, XKnn_accelerator_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKnn_accelerator_Start(XKnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKnn_accelerator_IsDone(XKnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKnn_accelerator_IsIdle(XKnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKnn_accelerator_IsReady(XKnn_accelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKnn_accelerator_EnableAutoRestart(XKnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKnn_accelerator_DisableAutoRestart(XKnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_AP_CTRL, 0);
}

void XKnn_accelerator_Set_X_test(XKnn_accelerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accelerator_WriteReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_X_TEST_DATA, (u32)(Data));
    XKnn_accelerator_WriteReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_X_TEST_DATA + 4, (u32)(Data >> 32));
}

u64 XKnn_accelerator_Get_X_test(XKnn_accelerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accelerator_ReadReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_X_TEST_DATA);
    Data += (u64)XKnn_accelerator_ReadReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_X_TEST_DATA + 4) << 32;
    return Data;
}

void XKnn_accelerator_Set_X_train(XKnn_accelerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accelerator_WriteReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_X_TRAIN_DATA, (u32)(Data));
    XKnn_accelerator_WriteReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_X_TRAIN_DATA + 4, (u32)(Data >> 32));
}

u64 XKnn_accelerator_Get_X_train(XKnn_accelerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accelerator_ReadReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_X_TRAIN_DATA);
    Data += (u64)XKnn_accelerator_ReadReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_X_TRAIN_DATA + 4) << 32;
    return Data;
}

void XKnn_accelerator_Set_y_train(XKnn_accelerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accelerator_WriteReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_Y_TRAIN_DATA, (u32)(Data));
    XKnn_accelerator_WriteReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_Y_TRAIN_DATA + 4, (u32)(Data >> 32));
}

u64 XKnn_accelerator_Get_y_train(XKnn_accelerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accelerator_ReadReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_Y_TRAIN_DATA);
    Data += (u64)XKnn_accelerator_ReadReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_Y_TRAIN_DATA + 4) << 32;
    return Data;
}

void XKnn_accelerator_Set_y_test(XKnn_accelerator *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accelerator_WriteReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_Y_TEST_DATA, (u32)(Data));
    XKnn_accelerator_WriteReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_Y_TEST_DATA + 4, (u32)(Data >> 32));
}

u64 XKnn_accelerator_Get_y_test(XKnn_accelerator *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKnn_accelerator_ReadReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_Y_TEST_DATA);
    Data += (u64)XKnn_accelerator_ReadReg(InstancePtr->Control_r_BaseAddress, XKNN_ACCELERATOR_CONTROL_R_ADDR_Y_TEST_DATA + 4) << 32;
    return Data;
}

void XKnn_accelerator_InterruptGlobalEnable(XKnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_GIE, 1);
}

void XKnn_accelerator_InterruptGlobalDisable(XKnn_accelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_GIE, 0);
}

void XKnn_accelerator_InterruptEnable(XKnn_accelerator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_IER);
    XKnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_IER, Register | Mask);
}

void XKnn_accelerator_InterruptDisable(XKnn_accelerator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_IER);
    XKnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKnn_accelerator_InterruptClear(XKnn_accelerator *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKnn_accelerator_WriteReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_ISR, Mask);
}

u32 XKnn_accelerator_InterruptGetEnabled(XKnn_accelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_IER);
}

u32 XKnn_accelerator_InterruptGetStatus(XKnn_accelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKnn_accelerator_ReadReg(InstancePtr->Control_BaseAddress, XKNN_ACCELERATOR_CONTROL_ADDR_ISR);
}

