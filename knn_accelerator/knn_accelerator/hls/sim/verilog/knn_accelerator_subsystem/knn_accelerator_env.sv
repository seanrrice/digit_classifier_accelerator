//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef KNN_ACCELERATOR_ENV__SV                                                                                   
    `define KNN_ACCELERATOR_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class knn_accelerator_env extends uvm_env;                                                                          
                                                                                                                    
        knn_accelerator_virtual_sequencer knn_accelerator_virtual_sqr;                                                      
        knn_accelerator_config knn_accelerator_cfg;                                                                         
                                                                                                                    
        axi_pkg::axi_env#(64,8,8,3,1) axi_master_gmem_x_test;
        axi_pkg::axi_env#(64,8,8,3,1) axi_master_gmem_x_train;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_gmem_y_train;
        axi_pkg::axi_env#(64,4,8,3,1) axi_master_gmem_y_test;
        axi_pkg::axi_env#(6,4,4,3,1) axi_lite_control_r;
        axi_pkg::axi_env#(4,4,4,3,1) axi_lite_control;
                                                                                                                    
        knn_accelerator_reference_model   refm;                                                                         
                                                                                                                    
        knn_accelerator_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(knn_accelerator_env)                                                                 
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (knn_accelerator_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (knn_accelerator_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "knn_accelerator_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void knn_accelerator_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        knn_accelerator_cfg = knn_accelerator_config::type_id::create("knn_accelerator_cfg", this);                           
                                                                                                                    

        knn_accelerator_cfg.gmem_x_test_cfg.set_default();
        knn_accelerator_cfg.gmem_x_test_cfg.drv_type = axi_pkg::SLAVE;
        knn_accelerator_cfg.gmem_x_test_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        knn_accelerator_cfg.gmem_x_test_cfg.write_latency_mode = TRANSACTION_FIRST;
        knn_accelerator_cfg.gmem_x_test_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_gmem_x_test*", "cfg", knn_accelerator_cfg.gmem_x_test_cfg);
        axi_master_gmem_x_test = axi_pkg::axi_env#(64,8,8,3,1)::type_id::create("axi_master_gmem_x_test", this);

        knn_accelerator_cfg.gmem_x_train_cfg.set_default();
        knn_accelerator_cfg.gmem_x_train_cfg.drv_type = axi_pkg::SLAVE;
        knn_accelerator_cfg.gmem_x_train_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        knn_accelerator_cfg.gmem_x_train_cfg.write_latency_mode = TRANSACTION_FIRST;
        knn_accelerator_cfg.gmem_x_train_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_gmem_x_train*", "cfg", knn_accelerator_cfg.gmem_x_train_cfg);
        axi_master_gmem_x_train = axi_pkg::axi_env#(64,8,8,3,1)::type_id::create("axi_master_gmem_x_train", this);

        knn_accelerator_cfg.gmem_y_train_cfg.set_default();
        knn_accelerator_cfg.gmem_y_train_cfg.drv_type = axi_pkg::SLAVE;
        knn_accelerator_cfg.gmem_y_train_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        knn_accelerator_cfg.gmem_y_train_cfg.write_latency_mode = TRANSACTION_FIRST;
        knn_accelerator_cfg.gmem_y_train_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_gmem_y_train*", "cfg", knn_accelerator_cfg.gmem_y_train_cfg);
        axi_master_gmem_y_train = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_gmem_y_train", this);

        knn_accelerator_cfg.gmem_y_test_cfg.set_default();
        knn_accelerator_cfg.gmem_y_test_cfg.drv_type = axi_pkg::SLAVE;
        knn_accelerator_cfg.gmem_y_test_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        knn_accelerator_cfg.gmem_y_test_cfg.write_latency_mode = TRANSACTION_FIRST;
        knn_accelerator_cfg.gmem_y_test_cfg.read_latency_mode = TRANSACTION_FIRST;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_master_gmem_y_test*", "cfg", knn_accelerator_cfg.gmem_y_test_cfg);
        axi_master_gmem_y_test = axi_pkg::axi_env#(64,4,8,3,1)::type_id::create("axi_master_gmem_y_test", this);

        knn_accelerator_cfg.control_r_cfg.set_default();
        knn_accelerator_cfg.control_r_cfg.drv_type = axi_pkg::MASTER;
        knn_accelerator_cfg.control_r_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_control_r*", "cfg", knn_accelerator_cfg.control_r_cfg);
        axi_lite_control_r = axi_pkg::axi_env#(6,4,4,3,1)::type_id::create("axi_lite_control_r", this);

        knn_accelerator_cfg.control_cfg.set_default();
        knn_accelerator_cfg.control_cfg.drv_type = axi_pkg::MASTER;
        knn_accelerator_cfg.control_cfg.reset_level = axi_pkg::RESET_LEVEL_LOW;
        uvm_config_db#(axi_pkg::axi_cfg)::set(this, "axi_lite_control*", "cfg", knn_accelerator_cfg.control_cfg);
        axi_lite_control = axi_pkg::axi_env#(4,4,4,3,1)::type_id::create("axi_lite_control", this);



        refm = knn_accelerator_reference_model::type_id::create("refm", this);


        uvm_config_db#(knn_accelerator_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = knn_accelerator_subsystem_monitor::type_id::create("subsys_mon", this);


        knn_accelerator_virtual_sqr = knn_accelerator_virtual_sequencer::type_id::create("knn_accelerator_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void knn_accelerator_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        if(knn_accelerator_cfg.gmem_x_test_cfg.drv_type==axi_pkg::MASTER ||knn_accelerator_cfg.gmem_x_test_cfg.drv_type==axi_pkg::SLAVE)
            knn_accelerator_virtual_sqr.gmem_x_test_sqr = axi_master_gmem_x_test.vsqr;
        axi_master_gmem_x_test.item_wtr_port.connect(subsys_mon.gmem_x_test_wtr_imp);
        axi_master_gmem_x_test.item_rtr_port.connect(subsys_mon.gmem_x_test_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_gmem_x_test.state, refm.axi_memaccess_cb_gmem_x_test);
        if(knn_accelerator_cfg.gmem_x_train_cfg.drv_type==axi_pkg::MASTER ||knn_accelerator_cfg.gmem_x_train_cfg.drv_type==axi_pkg::SLAVE)
            knn_accelerator_virtual_sqr.gmem_x_train_sqr = axi_master_gmem_x_train.vsqr;
        axi_master_gmem_x_train.item_wtr_port.connect(subsys_mon.gmem_x_train_wtr_imp);
        axi_master_gmem_x_train.item_rtr_port.connect(subsys_mon.gmem_x_train_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_gmem_x_train.state, refm.axi_memaccess_cb_gmem_x_train);
        if(knn_accelerator_cfg.gmem_y_train_cfg.drv_type==axi_pkg::MASTER ||knn_accelerator_cfg.gmem_y_train_cfg.drv_type==axi_pkg::SLAVE)
            knn_accelerator_virtual_sqr.gmem_y_train_sqr = axi_master_gmem_y_train.vsqr;
        axi_master_gmem_y_train.item_wtr_port.connect(subsys_mon.gmem_y_train_wtr_imp);
        axi_master_gmem_y_train.item_rtr_port.connect(subsys_mon.gmem_y_train_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_gmem_y_train.state, refm.axi_memaccess_cb_gmem_y_train);
        if(knn_accelerator_cfg.gmem_y_test_cfg.drv_type==axi_pkg::MASTER ||knn_accelerator_cfg.gmem_y_test_cfg.drv_type==axi_pkg::SLAVE)
            knn_accelerator_virtual_sqr.gmem_y_test_sqr = axi_master_gmem_y_test.vsqr;
        axi_master_gmem_y_test.item_wtr_port.connect(subsys_mon.gmem_y_test_wtr_imp);
        axi_master_gmem_y_test.item_rtr_port.connect(subsys_mon.gmem_y_test_rtr_imp);
        uvm_callbacks#(axi_pkg::axi_state, axi_pkg::axi_state_cbs)::add(axi_master_gmem_y_test.state, refm.axi_memaccess_cb_gmem_y_test);
        if(knn_accelerator_cfg.control_r_cfg.drv_type==axi_pkg::MASTER ||knn_accelerator_cfg.control_r_cfg.drv_type==axi_pkg::SLAVE)
            knn_accelerator_virtual_sqr.control_r_sqr = axi_lite_control_r.vsqr;
        axi_lite_control_r.item_wtr_port.connect(subsys_mon.control_r_wtr_imp);
        axi_lite_control_r.item_rtr_port.connect(subsys_mon.control_r_rtr_imp);
        if(knn_accelerator_cfg.control_cfg.drv_type==axi_pkg::MASTER ||knn_accelerator_cfg.control_cfg.drv_type==axi_pkg::SLAVE)
            knn_accelerator_virtual_sqr.control_sqr = axi_lite_control.vsqr;
        axi_lite_control.item_wtr_port.connect(subsys_mon.control_wtr_imp);
        axi_lite_control.item_rtr_port.connect(subsys_mon.control_rtr_imp);
        refm.knn_accelerator_cfg = knn_accelerator_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task knn_accelerator_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "knn_accelerator_env is running", UVM_LOW)
    endtask


`endif
