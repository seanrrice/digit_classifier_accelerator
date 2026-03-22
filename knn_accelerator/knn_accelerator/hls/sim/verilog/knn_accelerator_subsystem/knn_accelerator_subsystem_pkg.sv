//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef KNN_ACCELERATOR_SUBSYSTEM_PKG__SV          
    `define KNN_ACCELERATOR_SUBSYSTEM_PKG__SV      
                                                     
    package knn_accelerator_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import axi_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "knn_accelerator_config.sv"           
        `include "knn_accelerator_reference_model.sv"  
        `include "knn_accelerator_scoreboard.sv"       
        `include "knn_accelerator_subsystem_monitor.sv"
        `include "knn_accelerator_virtual_sequencer.sv"
        `include "knn_accelerator_pkg_sequence_lib.sv" 
        `include "knn_accelerator_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
