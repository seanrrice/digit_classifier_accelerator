// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XKNN_ACCELERATOR_H
#define XKNN_ACCELERATOR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xknn_accelerator_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
} XKnn_accelerator_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
    u32 IsReady;
} XKnn_accelerator;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XKnn_accelerator_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XKnn_accelerator_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XKnn_accelerator_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XKnn_accelerator_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XKnn_accelerator_Initialize(XKnn_accelerator *InstancePtr, UINTPTR BaseAddress);
XKnn_accelerator_Config* XKnn_accelerator_LookupConfig(UINTPTR BaseAddress);
#else
int XKnn_accelerator_Initialize(XKnn_accelerator *InstancePtr, u16 DeviceId);
XKnn_accelerator_Config* XKnn_accelerator_LookupConfig(u16 DeviceId);
#endif
int XKnn_accelerator_CfgInitialize(XKnn_accelerator *InstancePtr, XKnn_accelerator_Config *ConfigPtr);
#else
int XKnn_accelerator_Initialize(XKnn_accelerator *InstancePtr, const char* InstanceName);
int XKnn_accelerator_Release(XKnn_accelerator *InstancePtr);
#endif

void XKnn_accelerator_Start(XKnn_accelerator *InstancePtr);
u32 XKnn_accelerator_IsDone(XKnn_accelerator *InstancePtr);
u32 XKnn_accelerator_IsIdle(XKnn_accelerator *InstancePtr);
u32 XKnn_accelerator_IsReady(XKnn_accelerator *InstancePtr);
void XKnn_accelerator_EnableAutoRestart(XKnn_accelerator *InstancePtr);
void XKnn_accelerator_DisableAutoRestart(XKnn_accelerator *InstancePtr);

void XKnn_accelerator_Set_X_test(XKnn_accelerator *InstancePtr, u64 Data);
u64 XKnn_accelerator_Get_X_test(XKnn_accelerator *InstancePtr);
void XKnn_accelerator_Set_X_train(XKnn_accelerator *InstancePtr, u64 Data);
u64 XKnn_accelerator_Get_X_train(XKnn_accelerator *InstancePtr);
void XKnn_accelerator_Set_y_train(XKnn_accelerator *InstancePtr, u64 Data);
u64 XKnn_accelerator_Get_y_train(XKnn_accelerator *InstancePtr);
void XKnn_accelerator_Set_y_test(XKnn_accelerator *InstancePtr, u64 Data);
u64 XKnn_accelerator_Get_y_test(XKnn_accelerator *InstancePtr);

void XKnn_accelerator_InterruptGlobalEnable(XKnn_accelerator *InstancePtr);
void XKnn_accelerator_InterruptGlobalDisable(XKnn_accelerator *InstancePtr);
void XKnn_accelerator_InterruptEnable(XKnn_accelerator *InstancePtr, u32 Mask);
void XKnn_accelerator_InterruptDisable(XKnn_accelerator *InstancePtr, u32 Mask);
void XKnn_accelerator_InterruptClear(XKnn_accelerator *InstancePtr, u32 Mask);
u32 XKnn_accelerator_InterruptGetEnabled(XKnn_accelerator *InstancePtr);
u32 XKnn_accelerator_InterruptGetStatus(XKnn_accelerator *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
