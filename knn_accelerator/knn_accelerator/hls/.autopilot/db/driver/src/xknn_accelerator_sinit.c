// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xknn_accelerator.h"

extern XKnn_accelerator_Config XKnn_accelerator_ConfigTable[];

#ifdef SDT
XKnn_accelerator_Config *XKnn_accelerator_LookupConfig(UINTPTR BaseAddress) {
	XKnn_accelerator_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XKnn_accelerator_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XKnn_accelerator_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XKnn_accelerator_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKnn_accelerator_Initialize(XKnn_accelerator *InstancePtr, UINTPTR BaseAddress) {
	XKnn_accelerator_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKnn_accelerator_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKnn_accelerator_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XKnn_accelerator_Config *XKnn_accelerator_LookupConfig(u16 DeviceId) {
	XKnn_accelerator_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKNN_ACCELERATOR_NUM_INSTANCES; Index++) {
		if (XKnn_accelerator_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKnn_accelerator_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKnn_accelerator_Initialize(XKnn_accelerator *InstancePtr, u16 DeviceId) {
	XKnn_accelerator_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKnn_accelerator_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKnn_accelerator_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

