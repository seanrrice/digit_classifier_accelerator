set moduleName knn_majority_vote
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {knn_majority_vote}
set C_modelType { int 32 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ top_k_labels_read int 4 regular  }
	{ top_k_labels_read_10 int 4 regular  }
	{ top_k_labels_read_11 int 4 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "top_k_labels_read", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "top_k_labels_read_10", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "top_k_labels_read_11", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ top_k_labels_read sc_in sc_lv 4 signal 0 } 
	{ top_k_labels_read_10 sc_in sc_lv 4 signal 1 } 
	{ top_k_labels_read_11 sc_in sc_lv 4 signal 2 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "top_k_labels_read", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_read", "role": "default" }} , 
 	{ "name": "top_k_labels_read_10", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_read_10", "role": "default" }} , 
 	{ "name": "top_k_labels_read_11", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_read_11", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	knn_majority_vote {
		top_k_labels_read {Type I LastRead 2 FirstWrite -1}
		top_k_labels_read_10 {Type I LastRead 2 FirstWrite -1}
		top_k_labels_read_11 {Type I LastRead 2 FirstWrite -1}}
	knn_majority_vote_Pipeline_VITIS_LOOP_95_1 {
		counts {Type O LastRead -1 FirstWrite 0}}
	knn_majority_vote_Pipeline_VITIS_LOOP_106_2 {
		top_k_labels_read {Type I LastRead 0 FirstWrite -1}
		top_k_labels_read_3 {Type I LastRead 0 FirstWrite -1}
		top_k_labels_read_4 {Type I LastRead 0 FirstWrite -1}
		counts {Type IO LastRead 1 FirstWrite 3}}
	knn_majority_vote_Pipeline_VITIS_LOOP_119_3 {
		counts {Type I LastRead 0 FirstWrite -1}
		max_label_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "38", "Max" : "38"}
	, {"Name" : "Interval", "Min" : "38", "Max" : "38"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	top_k_labels_read { ap_none {  { top_k_labels_read in_data 0 4 } } }
	top_k_labels_read_10 { ap_none {  { top_k_labels_read_10 in_data 0 4 } } }
	top_k_labels_read_11 { ap_none {  { top_k_labels_read_11 in_data 0 4 } } }
}
