set moduleName knn_majority_vote_Pipeline_VITIS_LOOP_106_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 13
set C_modelName {knn_majority_vote_Pipeline_VITIS_LOOP_106_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict counts { MEM_WIDTH 32 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ top_k_labels_read int 4 regular  }
	{ top_k_labels_read_3 int 4 regular  }
	{ top_k_labels_read_4 int 4 regular  }
	{ counts int 32 regular {array 10 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "top_k_labels_read", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "top_k_labels_read_3", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "top_k_labels_read_4", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "counts", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ top_k_labels_read sc_in sc_lv 4 signal 0 } 
	{ top_k_labels_read_3 sc_in sc_lv 4 signal 1 } 
	{ top_k_labels_read_4 sc_in sc_lv 4 signal 2 } 
	{ counts_address0 sc_out sc_lv 4 signal 3 } 
	{ counts_ce0 sc_out sc_logic 1 signal 3 } 
	{ counts_we0 sc_out sc_logic 1 signal 3 } 
	{ counts_d0 sc_out sc_lv 32 signal 3 } 
	{ counts_address1 sc_out sc_lv 4 signal 3 } 
	{ counts_ce1 sc_out sc_logic 1 signal 3 } 
	{ counts_q1 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "top_k_labels_read", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_read", "role": "default" }} , 
 	{ "name": "top_k_labels_read_3", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_read_3", "role": "default" }} , 
 	{ "name": "top_k_labels_read_4", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_read_4", "role": "default" }} , 
 	{ "name": "counts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "counts", "role": "address0" }} , 
 	{ "name": "counts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "counts", "role": "ce0" }} , 
 	{ "name": "counts_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "counts", "role": "we0" }} , 
 	{ "name": "counts_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "counts", "role": "d0" }} , 
 	{ "name": "counts_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "counts", "role": "address1" }} , 
 	{ "name": "counts_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "counts", "role": "ce1" }} , 
 	{ "name": "counts_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "counts", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	knn_majority_vote_Pipeline_VITIS_LOOP_106_2 {
		top_k_labels_read {Type I LastRead 0 FirstWrite -1}
		top_k_labels_read_3 {Type I LastRead 0 FirstWrite -1}
		top_k_labels_read_4 {Type I LastRead 0 FirstWrite -1}
		counts {Type IO LastRead 1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	top_k_labels_read { ap_none {  { top_k_labels_read in_data 0 4 } } }
	top_k_labels_read_3 { ap_none {  { top_k_labels_read_3 in_data 0 4 } } }
	top_k_labels_read_4 { ap_none {  { top_k_labels_read_4 in_data 0 4 } } }
	counts { ap_memory {  { counts_address0 mem_address 1 4 }  { counts_ce0 mem_ce 1 1 }  { counts_we0 mem_we 1 1 }  { counts_d0 mem_din 1 32 }  { counts_address1 MemPortADDR2 1 4 }  { counts_ce1 MemPortCE2 1 1 }  { counts_q1 MemPortDOUT2 0 32 } } }
}
