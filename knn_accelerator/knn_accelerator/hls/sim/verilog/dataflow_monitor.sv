
`include "dump_file_agent.svh"
`include "csv_file_dump.svh"
`include "sample_agent.svh"
`include "loop_sample_agent.svh"
`include "sample_manager.svh"
`include "nodf_module_interface.svh"
`include "nodf_module_monitor.svh"
`include "seq_loop_interface.svh"
`include "seq_loop_monitor.svh"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);




    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_knn_accelerator.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_knn_accelerator.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_knn_accelerator.ap_done;
    assign module_intf_1.ap_continue = 1'b1;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;
    nodf_module_intf module_intf_2(clock,reset);
    assign module_intf_2.ap_start = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.ap_start;
    assign module_intf_2.ap_ready = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.ap_ready;
    assign module_intf_2.ap_done = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.ap_done;
    assign module_intf_2.ap_continue = 1'b1;
    assign module_intf_2.finish = finish;
    csv_file_dump mstatus_csv_dumper_2;
    nodf_module_monitor module_monitor_2;
    nodf_module_intf module_intf_3(clock,reset);
    assign module_intf_3.ap_start = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_init_top_k_fu_190.ap_start;
    assign module_intf_3.ap_ready = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_init_top_k_fu_190.ap_ready;
    assign module_intf_3.ap_done = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_init_top_k_fu_190.ap_done;
    assign module_intf_3.ap_continue = 1'b1;
    assign module_intf_3.finish = finish;
    csv_file_dump mstatus_csv_dumper_3;
    nodf_module_monitor module_monitor_3;
    nodf_module_intf module_intf_4(clock,reset);
    assign module_intf_4.ap_start = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_start;
    assign module_intf_4.ap_ready = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ready;
    assign module_intf_4.ap_done = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_done;
    assign module_intf_4.ap_continue = 1'b1;
    assign module_intf_4.finish = finish;
    csv_file_dump mstatus_csv_dumper_4;
    nodf_module_monitor module_monitor_4;
    nodf_module_intf module_intf_5(clock,reset);
    assign module_intf_5.ap_start = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_start;
    assign module_intf_5.ap_ready = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ready;
    assign module_intf_5.ap_done = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_done;
    assign module_intf_5.ap_continue = 1'b1;
    assign module_intf_5.finish = finish;
    csv_file_dump mstatus_csv_dumper_5;
    nodf_module_monitor module_monitor_5;
    nodf_module_intf module_intf_6(clock,reset);
    assign module_intf_6.ap_start = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_start;
    assign module_intf_6.ap_ready = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ready;
    assign module_intf_6.ap_done = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_done;
    assign module_intf_6.ap_continue = 1'b1;
    assign module_intf_6.finish = finish;
    csv_file_dump mstatus_csv_dumper_6;
    nodf_module_monitor module_monitor_6;

    seq_loop_intf#(13) seq_loop_intf_1(clock,reset);
    assign seq_loop_intf_1.pre_loop_state0 = AESL_inst_knn_accelerator.ap_ST_fsm_state2;
    assign seq_loop_intf_1.pre_states_valid = 1'b1;
    assign seq_loop_intf_1.post_loop_state0 = AESL_inst_knn_accelerator.ap_ST_fsm_state9;
    assign seq_loop_intf_1.post_states_valid = 1'b1;
    assign seq_loop_intf_1.quit_loop_state0 = AESL_inst_knn_accelerator.ap_ST_fsm_state3;
    assign seq_loop_intf_1.quit_states_valid = 1'b1;
    assign seq_loop_intf_1.cur_state = AESL_inst_knn_accelerator.ap_CS_fsm;
    assign seq_loop_intf_1.iter_start_state = AESL_inst_knn_accelerator.ap_ST_fsm_state3;
    assign seq_loop_intf_1.iter_end_state0 = AESL_inst_knn_accelerator.ap_ST_fsm_state8;
    assign seq_loop_intf_1.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_1.one_state_loop = 1'b0;
    assign seq_loop_intf_1.one_state_block = 1'b0;
    assign seq_loop_intf_1.finish = finish;
    csv_file_dump seq_loop_csv_dumper_1;
    seq_loop_monitor #(13) seq_loop_monitor_1;
    seq_loop_intf#(16) seq_loop_intf_2(clock,reset);
    assign seq_loop_intf_2.pre_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.ap_ST_fsm_state14;
    assign seq_loop_intf_2.pre_states_valid = 1'b1;
    assign seq_loop_intf_2.post_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.ap_ST_fsm_state1;
    assign seq_loop_intf_2.post_states_valid = 1'b1;
    assign seq_loop_intf_2.quit_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.ap_ST_fsm_state15;
    assign seq_loop_intf_2.quit_states_valid = 1'b1;
    assign seq_loop_intf_2.cur_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.ap_CS_fsm;
    assign seq_loop_intf_2.iter_start_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.ap_ST_fsm_state15;
    assign seq_loop_intf_2.iter_end_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.ap_ST_fsm_state16;
    assign seq_loop_intf_2.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_2.one_state_loop = 1'b0;
    assign seq_loop_intf_2.one_state_block = 1'b0;
    assign seq_loop_intf_2.finish = finish;
    csv_file_dump seq_loop_csv_dumper_2;
    seq_loop_monitor #(16) seq_loop_monitor_2;
    seq_loop_intf#(2) seq_loop_intf_3(clock,reset);
    assign seq_loop_intf_3.pre_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_init_top_k_fu_190.ap_ST_fsm_state1;
    assign seq_loop_intf_3.pre_states_valid = 1'b1;
    assign seq_loop_intf_3.post_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_init_top_k_fu_190.ap_ST_fsm_state1;
    assign seq_loop_intf_3.post_states_valid = 1'b1;
    assign seq_loop_intf_3.quit_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_init_top_k_fu_190.ap_ST_fsm_state2;
    assign seq_loop_intf_3.quit_states_valid = 1'b1;
    assign seq_loop_intf_3.cur_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_init_top_k_fu_190.ap_CS_fsm;
    assign seq_loop_intf_3.iter_start_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_init_top_k_fu_190.ap_ST_fsm_state2;
    assign seq_loop_intf_3.iter_end_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_init_top_k_fu_190.ap_ST_fsm_state2;
    assign seq_loop_intf_3.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_3.one_state_loop = 1'b1;
    assign seq_loop_intf_3.one_state_block = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_init_top_k_fu_190.ap_ST_fsm_state2_blk;
    assign seq_loop_intf_3.finish = finish;
    csv_file_dump seq_loop_csv_dumper_3;
    seq_loop_monitor #(2) seq_loop_monitor_3;
    seq_loop_intf#(90) seq_loop_intf_4(clock,reset);
    assign seq_loop_intf_4.pre_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ST_fsm_state10;
    assign seq_loop_intf_4.pre_states_valid = 1'b1;
    assign seq_loop_intf_4.post_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ST_fsm_state34;
    assign seq_loop_intf_4.post_states_valid = 1'b1;
    assign seq_loop_intf_4.quit_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ST_fsm_state11;
    assign seq_loop_intf_4.quit_states_valid = 1'b1;
    assign seq_loop_intf_4.cur_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_CS_fsm;
    assign seq_loop_intf_4.iter_start_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ST_fsm_state11;
    assign seq_loop_intf_4.iter_end_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ST_fsm_state33;
    assign seq_loop_intf_4.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_4.one_state_loop = 1'b0;
    assign seq_loop_intf_4.one_state_block = 1'b0;
    assign seq_loop_intf_4.finish = finish;
    csv_file_dump seq_loop_csv_dumper_4;
    seq_loop_monitor #(90) seq_loop_monitor_4;
    seq_loop_intf#(90) seq_loop_intf_5(clock,reset);
    assign seq_loop_intf_5.pre_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ST_fsm_state1;
    assign seq_loop_intf_5.pre_states_valid = 1'b1;
    assign seq_loop_intf_5.post_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ST_fsm_state1;
    assign seq_loop_intf_5.post_states_valid = 1'b1;
    assign seq_loop_intf_5.quit_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ST_fsm_state2;
    assign seq_loop_intf_5.quit_states_valid = 1'b1;
    assign seq_loop_intf_5.cur_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_CS_fsm;
    assign seq_loop_intf_5.iter_start_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ST_fsm_state2;
    assign seq_loop_intf_5.iter_end_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_train_loop_fu_200.ap_ST_fsm_state90;
    assign seq_loop_intf_5.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_5.one_state_loop = 1'b0;
    assign seq_loop_intf_5.one_state_block = 1'b0;
    assign seq_loop_intf_5.finish = finish;
    csv_file_dump seq_loop_csv_dumper_5;
    seq_loop_monitor #(90) seq_loop_monitor_5;
    seq_loop_intf#(7) seq_loop_intf_6(clock,reset);
    assign seq_loop_intf_6.pre_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ST_fsm_state2;
    assign seq_loop_intf_6.pre_states_valid = 1'b1;
    assign seq_loop_intf_6.post_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ST_fsm_state2;
    assign seq_loop_intf_6.post_states_valid = 1'b1;
    assign seq_loop_intf_6.quit_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ST_fsm_state3;
    assign seq_loop_intf_6.quit_states_valid = 1'b1;
    assign seq_loop_intf_6.cur_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_CS_fsm;
    assign seq_loop_intf_6.iter_start_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ST_fsm_state3;
    assign seq_loop_intf_6.iter_end_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ST_fsm_state7;
    assign seq_loop_intf_6.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_6.one_state_loop = 1'b0;
    assign seq_loop_intf_6.one_state_block = 1'b0;
    assign seq_loop_intf_6.finish = finish;
    csv_file_dump seq_loop_csv_dumper_6;
    seq_loop_monitor #(7) seq_loop_monitor_6;
    seq_loop_intf#(7) seq_loop_intf_7(clock,reset);
    assign seq_loop_intf_7.pre_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ST_fsm_state1;
    assign seq_loop_intf_7.pre_states_valid = 1'b1;
    assign seq_loop_intf_7.post_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ST_fsm_state1;
    assign seq_loop_intf_7.post_states_valid = 1'b1;
    assign seq_loop_intf_7.quit_loop_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ST_fsm_state2;
    assign seq_loop_intf_7.quit_states_valid = 1'b1;
    assign seq_loop_intf_7.cur_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_CS_fsm;
    assign seq_loop_intf_7.iter_start_state = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ST_fsm_state2;
    assign seq_loop_intf_7.iter_end_state0 = AESL_inst_knn_accelerator.grp_knn_distance_and_sort_fu_178.grp_knn_distance_and_sort_Outline_sort_loop_i_fu_215.ap_ST_fsm_state3;
    assign seq_loop_intf_7.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_7.one_state_loop = 1'b0;
    assign seq_loop_intf_7.one_state_block = 1'b0;
    assign seq_loop_intf_7.finish = finish;
    csv_file_dump seq_loop_csv_dumper_7;
    seq_loop_monitor #(7) seq_loop_monitor_7;
    seq_loop_intf#(6) seq_loop_intf_8(clock,reset);
    assign seq_loop_intf_8.pre_loop_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state1;
    assign seq_loop_intf_8.pre_states_valid = 1'b1;
    assign seq_loop_intf_8.post_loop_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state3;
    assign seq_loop_intf_8.post_states_valid = 1'b1;
    assign seq_loop_intf_8.quit_loop_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state2;
    assign seq_loop_intf_8.quit_states_valid = 1'b1;
    assign seq_loop_intf_8.cur_state = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_CS_fsm;
    assign seq_loop_intf_8.iter_start_state = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state2;
    assign seq_loop_intf_8.iter_end_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state2;
    assign seq_loop_intf_8.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_8.one_state_loop = 1'b1;
    assign seq_loop_intf_8.one_state_block = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state2_blk;
    assign seq_loop_intf_8.finish = finish;
    csv_file_dump seq_loop_csv_dumper_8;
    seq_loop_monitor #(6) seq_loop_monitor_8;
    seq_loop_intf#(6) seq_loop_intf_9(clock,reset);
    assign seq_loop_intf_9.pre_loop_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state2;
    assign seq_loop_intf_9.pre_states_valid = 1'b1;
    assign seq_loop_intf_9.post_loop_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state5;
    assign seq_loop_intf_9.post_states_valid = 1'b1;
    assign seq_loop_intf_9.quit_loop_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state3;
    assign seq_loop_intf_9.quit_states_valid = 1'b1;
    assign seq_loop_intf_9.cur_state = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_CS_fsm;
    assign seq_loop_intf_9.iter_start_state = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state3;
    assign seq_loop_intf_9.iter_end_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state4;
    assign seq_loop_intf_9.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_9.one_state_loop = 1'b0;
    assign seq_loop_intf_9.one_state_block = 1'b0;
    assign seq_loop_intf_9.finish = finish;
    csv_file_dump seq_loop_csv_dumper_9;
    seq_loop_monitor #(6) seq_loop_monitor_9;
    seq_loop_intf#(6) seq_loop_intf_10(clock,reset);
    assign seq_loop_intf_10.pre_loop_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state3;
    assign seq_loop_intf_10.pre_states_valid = 1'b1;
    assign seq_loop_intf_10.post_loop_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state1;
    assign seq_loop_intf_10.post_states_valid = 1'b1;
    assign seq_loop_intf_10.quit_loop_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state5;
    assign seq_loop_intf_10.quit_states_valid = 1'b1;
    assign seq_loop_intf_10.cur_state = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_CS_fsm;
    assign seq_loop_intf_10.iter_start_state = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state5;
    assign seq_loop_intf_10.iter_end_state0 = AESL_inst_knn_accelerator.grp_knn_majority_vote_fu_195.ap_ST_fsm_state6;
    assign seq_loop_intf_10.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_10.one_state_loop = 1'b0;
    assign seq_loop_intf_10.one_state_block = 1'b0;
    assign seq_loop_intf_10.finish = finish;
    csv_file_dump seq_loop_csv_dumper_10;
    seq_loop_monitor #(6) seq_loop_monitor_10;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;



    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);
    mstatus_csv_dumper_2 = new("./module_status2.csv");
    module_monitor_2 = new(module_intf_2,mstatus_csv_dumper_2);
    mstatus_csv_dumper_3 = new("./module_status3.csv");
    module_monitor_3 = new(module_intf_3,mstatus_csv_dumper_3);
    mstatus_csv_dumper_4 = new("./module_status4.csv");
    module_monitor_4 = new(module_intf_4,mstatus_csv_dumper_4);
    mstatus_csv_dumper_5 = new("./module_status5.csv");
    module_monitor_5 = new(module_intf_5,mstatus_csv_dumper_5);
    mstatus_csv_dumper_6 = new("./module_status6.csv");
    module_monitor_6 = new(module_intf_6,mstatus_csv_dumper_6);



    seq_loop_csv_dumper_1 = new("./seq_loop_status1.csv");
    seq_loop_monitor_1 = new(seq_loop_intf_1,seq_loop_csv_dumper_1);
    seq_loop_csv_dumper_2 = new("./seq_loop_status2.csv");
    seq_loop_monitor_2 = new(seq_loop_intf_2,seq_loop_csv_dumper_2);
    seq_loop_csv_dumper_3 = new("./seq_loop_status3.csv");
    seq_loop_monitor_3 = new(seq_loop_intf_3,seq_loop_csv_dumper_3);
    seq_loop_csv_dumper_4 = new("./seq_loop_status4.csv");
    seq_loop_monitor_4 = new(seq_loop_intf_4,seq_loop_csv_dumper_4);
    seq_loop_csv_dumper_5 = new("./seq_loop_status5.csv");
    seq_loop_monitor_5 = new(seq_loop_intf_5,seq_loop_csv_dumper_5);
    seq_loop_csv_dumper_6 = new("./seq_loop_status6.csv");
    seq_loop_monitor_6 = new(seq_loop_intf_6,seq_loop_csv_dumper_6);
    seq_loop_csv_dumper_7 = new("./seq_loop_status7.csv");
    seq_loop_monitor_7 = new(seq_loop_intf_7,seq_loop_csv_dumper_7);
    seq_loop_csv_dumper_8 = new("./seq_loop_status8.csv");
    seq_loop_monitor_8 = new(seq_loop_intf_8,seq_loop_csv_dumper_8);
    seq_loop_csv_dumper_9 = new("./seq_loop_status9.csv");
    seq_loop_monitor_9 = new(seq_loop_intf_9,seq_loop_csv_dumper_9);
    seq_loop_csv_dumper_10 = new("./seq_loop_status10.csv");
    seq_loop_monitor_10 = new(seq_loop_intf_10,seq_loop_csv_dumper_10);


    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(module_monitor_2);
    sample_manager_inst.add_one_monitor(module_monitor_3);
    sample_manager_inst.add_one_monitor(module_monitor_4);
    sample_manager_inst.add_one_monitor(module_monitor_5);
    sample_manager_inst.add_one_monitor(module_monitor_6);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_1);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_2);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_3);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_4);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_5);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_6);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_7);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_8);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_9);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_10);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1) begin
                @(negedge clock);
                break;
            end
            else
                @(posedge clock);
        end
    endtask


endmodule
