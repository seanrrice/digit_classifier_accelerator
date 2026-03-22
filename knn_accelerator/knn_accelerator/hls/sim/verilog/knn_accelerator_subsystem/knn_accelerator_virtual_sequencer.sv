//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef KNN_ACCELERATOR_VIRTUAL_SEQUENCER__SV                        
    `define KNN_ACCELERATOR_VIRTUAL_SEQUENCER__SV                    
                                                                       
    class knn_accelerator_virtual_sequencer extends uvm_sequencer;         
        axi_pkg::axi_virtual_sequencer gmem_x_test_sqr; 
        axi_pkg::axi_virtual_sequencer gmem_x_train_sqr; 
        axi_pkg::axi_virtual_sequencer gmem_y_train_sqr; 
        axi_pkg::axi_virtual_sequencer gmem_y_test_sqr; 
        axi_pkg::axi_virtual_sequencer control_r_sqr; 
        axi_pkg::axi_virtual_sequencer control_sqr; 
 
        function new (string name, uvm_component parent);              
            super.new(name, parent);                                   
            //`uvm_info(this.get_full_name(), "new is called", UVM_LOW)
        endfunction                                                    
                                                                       
        `uvm_component_utils_begin(knn_accelerator_virtual_sequencer)      
        `uvm_component_utils_end                                       
                                                                       
    endclass

`endif
