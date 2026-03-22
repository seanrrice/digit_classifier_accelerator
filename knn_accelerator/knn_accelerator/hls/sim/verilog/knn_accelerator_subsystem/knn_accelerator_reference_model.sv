//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef KNN_ACCELERATOR_REFERENCE_MODEL_SV
`define KNN_ACCELERATOR_REFERENCE_MODEL_SV
typedef class knn_accelerator_reference_model;
class memaccess_axi_state_cbs extends axi_pkg::axi_state_cbs;
    knn_accelerator_reference_model refm;
    string memid;
    //function new(string name="memaccess_axi_state_cbs");
    //    super.new(name);
    //endfunction
    virtual function void memmodel_read_fromar(ref logic[7:0] data[$], input longint addr, input longint len);
        if(memid=="gmem_x_test") refm.mem_blk_pages_gmem_x_test.read_elems_pipepage(data, addr, len);
        if(memid=="gmem_x_train") refm.mem_blk_pages_gmem_x_train.read_elems_pipepage(data, addr, len);
        if(memid=="gmem_y_train") refm.mem_blk_pages_gmem_y_train.read_elems_pipepage(data, addr, len);
        if(memid=="gmem_y_test") refm.mem_blk_pages_gmem_y_test.read_elems_pipepage(data, addr, len);
    endfunction
endclass

class knn_accelerator_reference_model extends uvm_component;
`define TV_IN_gmem_x_test "../tv/cdatafile/c.knn_accelerator.autotvin_gmem_x_test.dat"
`define TV_OUT_gmem_x_test "../tv/rtldatafile/rtl.knn_accelerator.autotvout_gmem_x_test.dat"
`define TV_IN_OFFSET_X_test "../tv/cdatafile/c.knn_accelerator.autotvin_X_test.dat"
`define TV_IN_gmem_x_train "../tv/cdatafile/c.knn_accelerator.autotvin_gmem_x_train.dat"
`define TV_OUT_gmem_x_train "../tv/rtldatafile/rtl.knn_accelerator.autotvout_gmem_x_train.dat"
`define TV_IN_OFFSET_X_train "../tv/cdatafile/c.knn_accelerator.autotvin_X_train.dat"
`define TV_IN_gmem_y_train "../tv/cdatafile/c.knn_accelerator.autotvin_gmem_y_train.dat"
`define TV_OUT_gmem_y_train "../tv/rtldatafile/rtl.knn_accelerator.autotvout_gmem_y_train.dat"
`define TV_IN_OFFSET_y_train "../tv/cdatafile/c.knn_accelerator.autotvin_y_train.dat"
`define TV_IN_gmem_y_test "../tv/cdatafile/c.knn_accelerator.autotvin_gmem_y_test.dat"
`define TV_OUT_gmem_y_test "../tv/rtldatafile/rtl.knn_accelerator.autotvout_gmem_y_test.dat"
`define TV_IN_OFFSET_y_test "../tv/cdatafile/c.knn_accelerator.autotvin_y_test.dat"
`define TV_IN_X_test "../tv/cdatafile/c.knn_accelerator.autotvin_X_test.dat"
`define TV_OUT_X_test ""
`define TV_IN_X_train "../tv/cdatafile/c.knn_accelerator.autotvin_X_train.dat"
`define TV_OUT_X_train ""
`define TV_IN_y_train "../tv/cdatafile/c.knn_accelerator.autotvin_y_train.dat"
`define TV_OUT_y_train ""
`define TV_IN_y_test "../tv/cdatafile/c.knn_accelerator.autotvin_y_test.dat"
`define TV_OUT_y_test ""
    bit  write_data_finish_control_r;
    event allaxilite_write_data_finish;
    event allaxilite_write_one_transaction_finish;
    event write_start_finish;
    int trans_num_total = 1;
    int trans_num_idx;
    int ap_done_cnt=1;
    event dut2tb_ap_ready;
    event dut2tb_ap_done;
    event ap_ready_for_nexttrans;
    event ap_done_for_nexttrans;
    event finish;
    knn_accelerator_config knn_accelerator_cfg;
    virtual interface misc_interface misc_if;

    mem_model_pages_with_diffofst#(64,8) mem_blk_pages_gmem_x_test;
    int blk_id_gmem_x_test = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_gmem_x_test;

    mem_model_pages_with_diffofst#(64,8) mem_blk_pages_gmem_x_train;
    int blk_id_gmem_x_train = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_gmem_x_train;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_gmem_y_train;
    int blk_id_gmem_y_train = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_gmem_y_train;

    mem_model_pages_with_diffofst#(32,8) mem_blk_pages_gmem_y_test;
    int blk_id_gmem_y_test = 0;
    memaccess_axi_state_cbs axi_memaccess_cb_gmem_y_test;

    
    `uvm_component_utils_begin(knn_accelerator_reference_model)
        `uvm_field_int (trans_num_idx, UVM_DEFAULT)
    `uvm_component_utils_end

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual misc_interface)::get(this, "", "misc_if", misc_if))
            `uvm_fatal(this.get_full_name(), "No misc_if from high level")
        axi_memaccess_cb_gmem_x_test = new;
        axi_memaccess_cb_gmem_x_test.refm = this;
        axi_memaccess_cb_gmem_x_test.memid = "gmem_x_test";
        axi_memaccess_cb_gmem_x_train = new;
        axi_memaccess_cb_gmem_x_train.refm = this;
        axi_memaccess_cb_gmem_x_train.memid = "gmem_x_train";
        axi_memaccess_cb_gmem_y_train = new;
        axi_memaccess_cb_gmem_y_train.refm = this;
        axi_memaccess_cb_gmem_y_train.memid = "gmem_y_train";
        axi_memaccess_cb_gmem_y_test = new;
        axi_memaccess_cb_gmem_y_test.refm = this;
        axi_memaccess_cb_gmem_y_test.memid = "gmem_y_test";
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new (name, parent);
        trans_num_idx= 0;
    endfunction

    virtual task run_phase(uvm_phase phase);
        string fpath[$];
misc_if.dut2tb_ap_done = 0;
        fpath.push_back(`TV_IN_gmem_x_test);
        mem_blk_pages_gmem_x_test = mem_model_pages_with_diffofst#(64,8)::type_id::create("mem_blk_pages_gmem_x_test");
        mem_blk_pages_gmem_x_test.whole_page_size=4048;
        mem_blk_pages_gmem_x_test.maxi_bundlevar_fpath["X_test"]=`TV_IN_OFFSET_X_test;
        mem_blk_pages_gmem_x_test.set_binary(1);
        mem_blk_pages_gmem_x_test.tvinload_pagechk_atinit(fpath, 490*((64+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_gmem_x_train);
        mem_blk_pages_gmem_x_train = mem_model_pages_with_diffofst#(64,8)::type_id::create("mem_blk_pages_gmem_x_train");
        mem_blk_pages_gmem_x_train.whole_page_size=4048;
        mem_blk_pages_gmem_x_train.maxi_bundlevar_fpath["X_train"]=`TV_IN_OFFSET_X_train;
        mem_blk_pages_gmem_x_train.set_binary(1);
        mem_blk_pages_gmem_x_train.tvinload_pagechk_atinit(fpath, 490*((64+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_gmem_y_train);
        mem_blk_pages_gmem_y_train = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_gmem_y_train");
        mem_blk_pages_gmem_y_train.whole_page_size=104;
        mem_blk_pages_gmem_y_train.maxi_bundlevar_fpath["y_train"]=`TV_IN_OFFSET_y_train;
        mem_blk_pages_gmem_y_train.set_binary(1);
        mem_blk_pages_gmem_y_train.tvinload_pagechk_atinit(fpath, 10*((32+7)/8), 0, 0);
        fpath.delete();

        fpath.push_back(`TV_IN_gmem_y_test);
        mem_blk_pages_gmem_y_test = mem_model_pages_with_diffofst#(32,8)::type_id::create("mem_blk_pages_gmem_y_test");
        mem_blk_pages_gmem_y_test.whole_page_size=104;
        mem_blk_pages_gmem_y_test.maxi_bundlevar_fpath["y_test"]=`TV_IN_OFFSET_y_test;
        mem_blk_pages_gmem_y_test.set_binary(1);
        mem_blk_pages_gmem_y_test.tvinload_pagechk_atinit(fpath, 10*((32+7)/8), 0, 0);
        mem_blk_pages_gmem_y_test.tvoutdump_atinit(`TV_OUT_gmem_y_test);
        fpath.delete();

        fork
            forever begin
                wait(write_data_finish_control_r);
                `uvm_info("", "trigger_allaxilite_data_write_finish", UVM_LOW)
                @(posedge misc_if.clock);
                write_data_finish_control_r = 0;
                -> allaxilite_write_data_finish;
            end
            forever begin
                //this is non-pipeline case
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                @allaxilite_write_data_finish;
                @(posedge misc_if.clock);
                -> ap_ready_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_ready_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_ready_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_ready_for_nexttrans = 0;
                    end
                join_none
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        -> misc_if.dut2tb_ap_done_evt;
                        #0;
                        -> misc_if.dut2tb_ap_ready_evt;
                    end
                join_none
                -> ap_done_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_done_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_done_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_done_for_nexttrans = 0;
                    end
                join_none
            end

            for(int i=1; i<1; i++) begin
                @dut2tb_ap_ready;
                mem_blk_pages_gmem_x_test.incr_rd_page_idx() ;
                mem_blk_pages_gmem_x_train.incr_rd_page_idx() ;
                mem_blk_pages_gmem_y_train.incr_rd_page_idx() ;
                mem_blk_pages_gmem_y_test.incr_rd_page_idx() ;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_ready === 1)   break;
                end
                @(posedge misc_if.clock);
                `uvm_info(this.get_full_name(), "trigger event DUT2TB_AP_READY", UVM_LOW)
                -> dut2tb_ap_ready;
                 misc_if.tb2dut_ap_start = 0;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_done_kernel === 1)   break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        `uvm_info(this.get_full_name(), "trigger event dut2tb_ap_done_kernel_evt", UVM_LOW)
                        -> misc_if.dut2tb_ap_done_kernel_evt;
                    end
                join_none
            end
        join
    endtask

    virtual function void write_axi_wtr_gmem_x_test(axi_pkg::axi_transfer tr);
        mem_blk_pages_gmem_x_test.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_gmem_x_test(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_gmem_x_train(axi_pkg::axi_transfer tr);
        mem_blk_pages_gmem_x_train.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_gmem_x_train(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_gmem_y_train(axi_pkg::axi_transfer tr);
        mem_blk_pages_gmem_y_train.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_gmem_y_train(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_gmem_y_test(axi_pkg::axi_transfer tr);
        mem_blk_pages_gmem_y_test.write_elems_pipepage(tr.data,tr.byte_addr);
    endfunction

    virtual function void write_axi_rtr_gmem_y_test(axi_pkg::axi_transfer tr);
    endfunction

    virtual function void write_axi_wtr_control_r(axi_pkg::axi_transfer tr);
    endfunction
    virtual function void write_axi_rtr_control_r(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(0) begin //no block ctrl register processing
        end else begin
        end
    endfunction

    virtual function void write_axi_wtr_control(axi_pkg::axi_transfer tr);
        if(tr.addr == 0 && tr.len == 0 && tr.data[0][0]==1) begin //addr 0 and bit 0 are parameter
            -> write_start_finish;
            misc_if.tb2dut_ap_start = 1;
        end
    endfunction
    virtual function void write_axi_rtr_control(axi_pkg::axi_transfer tr);
            `uvm_info("receive axi read data", tr.sprint(), UVM_HIGH)
        if(tr.addr == 0 && tr.len == 0) begin
            if(tr.data[0][1]==1) begin  //bit 1 is parameter
                `uvm_info("status polling", "ap_done is polled", UVM_LOW);
                fork
                    begin
                        misc_if.dut2tb_ap_done = 1;
                        @(posedge misc_if.clock);
                        #0;
                        misc_if.dut2tb_ap_done = 0;
                        misc_if.tb2dut_ap_continue = 0;
                        -> dut2tb_ap_done;
                    end
                join_none
            end
            begin
                misc_if.dut2tb_ap_idle = tr.data[0][2];
            end
        end else begin
        end
    endfunction
endclass
`endif
