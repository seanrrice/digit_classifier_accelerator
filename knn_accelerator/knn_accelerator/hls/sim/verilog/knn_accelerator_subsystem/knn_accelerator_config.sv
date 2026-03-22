//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef KNN_ACCELERATOR_CONFIG__SV                        
    `define KNN_ACCELERATOR_CONFIG__SV                    
                                                            
    class knn_accelerator_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      
        axi_pkg::axi_cfg gmem_x_test_cfg;
        axi_pkg::axi_cfg gmem_x_train_cfg;
        axi_pkg::axi_cfg gmem_y_train_cfg;
        axi_pkg::axi_cfg gmem_y_test_cfg;
        axi_pkg::axi_cfg control_r_cfg;
        axi_pkg::axi_cfg control_cfg;

        `uvm_object_utils_begin(knn_accelerator_config)         
        `uvm_field_object(gmem_x_test_cfg, UVM_DEFAULT);
        `uvm_field_object(gmem_x_train_cfg, UVM_DEFAULT);
        `uvm_field_object(gmem_y_train_cfg, UVM_DEFAULT);
        `uvm_field_object(gmem_y_test_cfg, UVM_DEFAULT);
        `uvm_field_object(control_r_cfg, UVM_DEFAULT);
        `uvm_field_object(control_cfg, UVM_DEFAULT);
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "knn_accelerator_config");
            super.new(name);                                
            gmem_x_test_cfg = new("gmem_x_test_cfg", 1);
            gmem_x_train_cfg = new("gmem_x_train_cfg", 1);
            gmem_y_train_cfg = new("gmem_y_train_cfg", 1);
            gmem_y_test_cfg = new("gmem_y_test_cfg", 1);
            control_r_cfg = axi_pkg::axi_cfg::type_id::create("control_r_cfg");
            control_cfg = axi_pkg::axi_cfg::type_id::create("control_cfg");
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
