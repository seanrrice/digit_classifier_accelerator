set moduleName knn_distance_and_sort_Pipeline_init_top_k
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
set C_modelName {knn_distance_and_sort_Pipeline_init_top_k}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ top_k_labels_0 int 4 regular {pointer 1}  }
	{ top_k_labels_2 int 4 regular {pointer 1}  }
	{ top_k_labels_1 int 4 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "top_k_labels_0", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_k_labels_2", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_k_labels_1", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ top_k_labels_0 sc_out sc_lv 4 signal 0 } 
	{ top_k_labels_0_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ top_k_labels_2 sc_out sc_lv 4 signal 1 } 
	{ top_k_labels_2_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ top_k_labels_1 sc_out sc_lv 4 signal 2 } 
	{ top_k_labels_1_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "top_k_labels_0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_0", "role": "default" }} , 
 	{ "name": "top_k_labels_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "top_k_labels_0", "role": "ap_vld" }} , 
 	{ "name": "top_k_labels_2", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_2", "role": "default" }} , 
 	{ "name": "top_k_labels_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "top_k_labels_2", "role": "ap_vld" }} , 
 	{ "name": "top_k_labels_1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_1", "role": "default" }} , 
 	{ "name": "top_k_labels_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "top_k_labels_1", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	knn_distance_and_sort_Pipeline_init_top_k {
		top_k_labels_0 {Type O LastRead -1 FirstWrite 0}
		top_k_labels_2 {Type O LastRead -1 FirstWrite 0}
		top_k_labels_1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	top_k_labels_0 { ap_vld {  { top_k_labels_0 out_data 1 4 }  { top_k_labels_0_ap_vld out_vld 1 1 } } }
	top_k_labels_2 { ap_vld {  { top_k_labels_2 out_data 1 4 }  { top_k_labels_2_ap_vld out_vld 1 1 } } }
	top_k_labels_1 { ap_vld {  { top_k_labels_1 out_data 1 4 }  { top_k_labels_1_ap_vld out_vld 1 1 } } }
}
