//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef KNN_ACCELERATOR_SUBSYS_TEST_SEQUENCE_LIB__SV                                              
    `define KNN_ACCELERATOR_SUBSYS_TEST_SEQUENCE_LIB__SV                                          
                                                                                                    
                                                                                                    
    `include "uvm_macros.svh"                                                                     
                                                                                                    
    class knn_accelerator_subsys_test_sequence_lib extends uvm_sequence;                                
                                                                                                    
        function new (string name = "knn_accelerator_subsys_test_sequence_lib");                      
            super.new(name);                                                                        
            `uvm_info(this.get_full_name(), "new is called", UVM_LOW)                             
        endfunction                                                                                 
                                                                                                    
        `uvm_object_utils(knn_accelerator_subsys_test_sequence_lib)                                     
        `uvm_declare_p_sequencer(knn_accelerator_virtual_sequencer)                                     
                                                                                                    
        virtual task body();                                                                        
            uvm_phase starting_phase;                                                               
            virtual interface misc_interface misc_if;                                               
            knn_accelerator_reference_model refm;                                                       
                                                                                                    
            axi_pkg::axi_slave_sequence#(64,8,8,3,1) axi_slave_gmem_x_test_seq;
            axi_pkg::axi_slave_sequence#(64,8,8,3,1) axi_slave_gmem_x_train_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_gmem_y_train_seq;
            axi_pkg::axi_slave_sequence#(64,4,8,3,1) axi_slave_gmem_y_test_seq;
            axi_pkg::axi_busdatas_master_sequence#(6, 32) axi_master_wr_control_r_seq;
            axi_pkg::axi_busdatas_master_sequence#(4, 32) axi_master_wr_control_seq;
            axi_pkg::axi_busdatas_master_sequence#(4, 32) axi_master_poll_control_seq;

            if (!uvm_config_db#(knn_accelerator_reference_model)::get(p_sequencer,"", "refm", refm))
                `uvm_fatal(this.get_full_name(), "No reference model")
            `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_LOW)

            `uvm_info(this.get_full_name(), "body is called", UVM_LOW)
            starting_phase = this.get_starting_phase();
            if (starting_phase != null) begin
                `uvm_info(this.get_full_name(), "starting_phase not null", UVM_LOW)
                starting_phase.raise_objection(this);
            end
            else
                `uvm_info(this.get_full_name(), "starting_phase null" , UVM_LOW)

            misc_if = refm.misc_if;


            //phase_done.set_drain_time(this, 0ns);
            wait(refm.misc_if.reset === 1);
            ->refm.misc_if.initialed_evt;

            fork
                begin
                    fork
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_gmem_x_test_seq, p_sequencer.gmem_x_test_sqr);
                            axi_slave_gmem_x_test_seq.misc_if = refm.misc_if;
                            axi_slave_gmem_x_test_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_gmem_x_test_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_gmem_x_test_seq.finish     = refm.finish ;
                            axi_slave_gmem_x_test_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_gmem_x_test_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_gmem_x_train_seq, p_sequencer.gmem_x_train_sqr);
                            axi_slave_gmem_x_train_seq.misc_if = refm.misc_if;
                            axi_slave_gmem_x_train_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_gmem_x_train_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_gmem_x_train_seq.finish     = refm.finish ;
                            axi_slave_gmem_x_train_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_gmem_x_train_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_gmem_y_train_seq, p_sequencer.gmem_y_train_sqr);
                            axi_slave_gmem_y_train_seq.misc_if = refm.misc_if;
                            axi_slave_gmem_y_train_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_gmem_y_train_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_gmem_y_train_seq.finish     = refm.finish ;
                            axi_slave_gmem_y_train_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_gmem_y_train_seq);
                        end
                        begin //axi slave sequence. loop delays
                            `uvm_create_on(axi_slave_gmem_y_test_seq, p_sequencer.gmem_y_test_sqr);
                            axi_slave_gmem_y_test_seq.misc_if = refm.misc_if;
                            axi_slave_gmem_y_test_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_slave_gmem_y_test_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_slave_gmem_y_test_seq.finish     = refm.finish ;
                            axi_slave_gmem_y_test_seq.isusr_delay = axi_pkg::NO_DELAY;
                            `uvm_send(axi_slave_gmem_y_test_seq);
                        end
                        begin
                            int control_r_page_idx_bak;
                            `uvm_create_on(axi_master_wr_control_r_seq, p_sequencer.control_r_sqr);
                            axi_master_wr_control_r_seq.misc_if = refm.misc_if;
                            axi_master_wr_control_r_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_wr_control_r_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_wr_control_r_seq.finish     = refm.finish ;
                            axi_master_wr_control_r_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int i=0; i<1; i++) begin
                                logic[63:0] data64bit_X_test[$];
                                logic[32-1:0] databusbit_X_test[$];
                                logic[63:0] data64bit_X_train[$];
                                logic[32-1:0] databusbit_X_train[$];
                                logic[63:0] data64bit_y_train[$];
                                logic[32-1:0] databusbit_y_train[$];
                                logic[63:0] data64bit_y_test[$];
                                logic[32-1:0] databusbit_y_test[$];
                                data64bit_X_test.delete(); databusbit_X_test.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_X_test.push_back( ((refm.mem_blk_pages_gmem_x_test.maxi_bundlevar_offset["X_test"]+refm.mem_blk_pages_gmem_x_test.page_ofst[refm.mem_blk_pages_gmem_x_test.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_X_test[s]) databusbit_X_test[s]=data64bit_X_test[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_X_test, 0, 16, 1);
                                data64bit_X_train.delete(); databusbit_X_train.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_X_train.push_back( ((refm.mem_blk_pages_gmem_x_train.maxi_bundlevar_offset["X_train"]+refm.mem_blk_pages_gmem_x_train.page_ofst[refm.mem_blk_pages_gmem_x_train.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_X_train[s]) databusbit_X_train[s]=data64bit_X_train[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_X_train, 0, 28, 1);
                                data64bit_y_train.delete(); databusbit_y_train.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_y_train.push_back( ((refm.mem_blk_pages_gmem_y_train.maxi_bundlevar_offset["y_train"]+refm.mem_blk_pages_gmem_y_train.page_ofst[refm.mem_blk_pages_gmem_y_train.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_y_train[s]) databusbit_y_train[s]=data64bit_y_train[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_y_train, 0, 40, 1);
                                data64bit_y_test.delete(); databusbit_y_test.delete();
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=0;
                                for(int j=0; j < (64+32-1)/32; j++) begin
                                    data64bit_y_test.push_back( ((refm.mem_blk_pages_gmem_y_test.maxi_bundlevar_offset["y_test"]+refm.mem_blk_pages_gmem_y_test.page_ofst[refm.mem_blk_pages_gmem_y_test.rd_page_idx])>>(j*32)) & (2**32-1) );
                                end
                                foreach(data64bit_y_test[s]) databusbit_y_test[s]=data64bit_y_test[s][32-1:0];
                                axi_master_wr_control_r_seq.StableAxiliteNoUpdate=1;
                                axi_master_wr_control_r_seq.datamerge_inavg(databusbit_y_test, 0, 52, 1);
                                `uvm_send(axi_master_wr_control_r_seq);
                                refm.write_data_finish_control_r = 1;
                                `uvm_info("control_r data writting thread", $sformatf("%0dth(total 1): waiting for all write data finish event",i), UVM_LOW)
                                wait(refm.allaxilite_write_data_finish.triggered);
                                refm.write_data_finish_control_r = 0;
                                `uvm_info("control_r wait for ap_ready for next trans", $sformatf("%0dth(total 1): begin to wait",i), UVM_LOW)
                                wait(refm.dut2tb_ap_ready.triggered);
                                wait(refm.ap_done_for_nexttrans.triggered);
                                #0.01; //make sure mem incr_rd_page_idx is called first
                            end
                        end
                        begin
                            int control_page_idx_bak;
                            `uvm_create_on(axi_master_wr_control_seq, p_sequencer.control_sqr);
                            axi_master_wr_control_seq.misc_if = refm.misc_if;
                            axi_master_wr_control_seq.ap_done    = refm.ap_done_for_nexttrans   ;
                            axi_master_wr_control_seq.ap_ready   = refm.ap_ready_for_nexttrans  ;
                            axi_master_wr_control_seq.finish     = refm.finish ;
                            axi_master_wr_control_seq.isusr_delay = axi_pkg::NO_DELAY;
                            for(int i=0; i<1; i++) begin
                                wait(refm.allaxilite_write_data_finish.triggered);
                                fork
                                    begin // configure start to enable DUT
                                        axi_master_wr_control_seq.wr_addr_data.push_back( (1<<0)+(0<<32) );
                                        `uvm_info("control start dut by axilite", $sformatf("%0dth(total 1): begin to set start bit",i), UVM_LOW)
                                        `uvm_send(axi_master_wr_control_seq);
                                    end
                                    begin
                                        `uvm_info("control wait for ap_ready for next trans", $sformatf("%0dth(total 1): begin to wait",i), UVM_LOW)
                                        wait(refm.dut2tb_ap_ready.triggered);
                                        wait(refm.ap_done_for_nexttrans.triggered);
                                        #0.01; //make sure mem incr_rd_page_idx is called first
                                    end
                                join
                            end
                        end
                        begin
                            for(int j=0; j<1; j=j+refm.ap_done_cnt) begin
                                wait(misc_if.dut2tb_ap_done_kernel == 1);
                                `uvm_info("test finish control", $sformatf("ap_done of kernel is triggered"), UVM_LOW)
                                @(posedge misc_if.clock);
                                fork
                                    forever begin
                                        `uvm_create_on(axi_master_poll_control_seq, p_sequencer.control_sqr);
                                        axi_master_poll_control_seq.isusr_delay = axi_pkg::NO_DELAY;
                                        axi_master_poll_control_seq.misc_if = refm.misc_if;
                                        axi_master_poll_control_seq.rd_addr.push_back(0);
                                        `uvm_send(axi_master_poll_control_seq)
                                        repeat(2) @(posedge misc_if.clock);
                                    end
                                    begin
                                        `uvm_info("test finish control", $sformatf("%0dth(total 1) ap_done_for_nexttrans begin to wait",j), UVM_LOW)
                                        @refm.dut2tb_ap_done;
                                    end
                                join_any
                                disable fork;
                                wait(refm.ap_ready_for_nexttrans.triggered);
                            end
                        end
                    join
                end

                begin
                    for(int j=0; j<1; j=j+refm.ap_done_cnt) @refm.ap_done_for_nexttrans;
                    `uvm_info(this.get_full_name(), "autotb finished", UVM_LOW)
                    -> refm.finish;
                    refm.misc_if.finished = 1;
                    @(posedge refm.misc_if.clock);
                    refm.misc_if.finished = 0;
                    @(posedge refm.misc_if.clock);
                    -> refm.misc_if.finished_evt;
                end
            join_any
            repeat(5) @(posedge refm.misc_if.clock); //5 cycles delay for finish stuff. 5 is haphazard value

            p_sequencer.gmem_x_test_sqr.stop_sequences();
            p_sequencer.gmem_x_train_sqr.stop_sequences();
            p_sequencer.gmem_y_train_sqr.stop_sequences();
            p_sequencer.gmem_y_test_sqr.stop_sequences();
            p_sequencer.control_r_sqr.stop_sequences();
            p_sequencer.control_sqr.stop_sequences();
            disable fork;
                                                                                                    
            starting_phase.drop_objection(this);                                                    
                                                                                                    
        endtask                                                                                     
    endclass                                                                                        
                                                                                                    
`endif                                                                                              
