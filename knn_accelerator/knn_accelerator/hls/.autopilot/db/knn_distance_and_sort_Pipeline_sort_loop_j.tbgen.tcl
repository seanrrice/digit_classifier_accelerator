set moduleName knn_distance_and_sort_Pipeline_sort_loop_j
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
set C_modelName {knn_distance_and_sort_Pipeline_sort_loop_j}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict distances { MEM_WIDTH 64 MEM_SIZE 80 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict labels { MEM_WIDTH 4 MEM_SIZE 10 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ indvars_iv14 int 4 regular  }
	{ distances double 64 regular {array 10 { 2 2 } 1 1 }  }
	{ labels int 4 regular {array 10 { 2 2 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "indvars_iv14", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "distances", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "labels", "interface" : "memory", "bitwidth" : 4, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ indvars_iv14 sc_in sc_lv 4 signal 0 } 
	{ distances_address0 sc_out sc_lv 4 signal 1 } 
	{ distances_ce0 sc_out sc_logic 1 signal 1 } 
	{ distances_we0 sc_out sc_logic 1 signal 1 } 
	{ distances_d0 sc_out sc_lv 64 signal 1 } 
	{ distances_q0 sc_in sc_lv 64 signal 1 } 
	{ distances_address1 sc_out sc_lv 4 signal 1 } 
	{ distances_ce1 sc_out sc_logic 1 signal 1 } 
	{ distances_we1 sc_out sc_logic 1 signal 1 } 
	{ distances_d1 sc_out sc_lv 64 signal 1 } 
	{ distances_q1 sc_in sc_lv 64 signal 1 } 
	{ labels_address0 sc_out sc_lv 4 signal 2 } 
	{ labels_ce0 sc_out sc_logic 1 signal 2 } 
	{ labels_we0 sc_out sc_logic 1 signal 2 } 
	{ labels_d0 sc_out sc_lv 4 signal 2 } 
	{ labels_q0 sc_in sc_lv 4 signal 2 } 
	{ labels_address1 sc_out sc_lv 4 signal 2 } 
	{ labels_ce1 sc_out sc_logic 1 signal 2 } 
	{ labels_we1 sc_out sc_logic 1 signal 2 } 
	{ labels_d1 sc_out sc_lv 4 signal 2 } 
	{ labels_q1 sc_in sc_lv 4 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "indvars_iv14", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "indvars_iv14", "role": "default" }} , 
 	{ "name": "distances_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "distances", "role": "address0" }} , 
 	{ "name": "distances_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "distances", "role": "ce0" }} , 
 	{ "name": "distances_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "distances", "role": "we0" }} , 
 	{ "name": "distances_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "distances", "role": "d0" }} , 
 	{ "name": "distances_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "distances", "role": "q0" }} , 
 	{ "name": "distances_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "distances", "role": "address1" }} , 
 	{ "name": "distances_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "distances", "role": "ce1" }} , 
 	{ "name": "distances_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "distances", "role": "we1" }} , 
 	{ "name": "distances_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "distances", "role": "d1" }} , 
 	{ "name": "distances_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "distances", "role": "q1" }} , 
 	{ "name": "labels_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "labels", "role": "address0" }} , 
 	{ "name": "labels_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "labels", "role": "ce0" }} , 
 	{ "name": "labels_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "labels", "role": "we0" }} , 
 	{ "name": "labels_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "labels", "role": "d0" }} , 
 	{ "name": "labels_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "labels", "role": "q0" }} , 
 	{ "name": "labels_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "labels", "role": "address1" }} , 
 	{ "name": "labels_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "labels", "role": "ce1" }} , 
 	{ "name": "labels_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "labels", "role": "we1" }} , 
 	{ "name": "labels_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "labels", "role": "d1" }} , 
 	{ "name": "labels_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "labels", "role": "q1" }}  ]}

set ArgLastReadFirstWriteLatency {
	knn_distance_and_sort_Pipeline_sort_loop_j {
		indvars_iv14 {Type I LastRead 0 FirstWrite -1}
		distances {Type IO LastRead 1 FirstWrite 4}
		labels {Type IO LastRead 4 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "47"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "47"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	indvars_iv14 { ap_none {  { indvars_iv14 in_data 0 4 } } }
	distances { ap_memory {  { distances_address0 mem_address 1 4 }  { distances_ce0 mem_ce 1 1 }  { distances_we0 mem_we 1 1 }  { distances_d0 mem_din 1 64 }  { distances_q0 mem_dout 0 64 }  { distances_address1 MemPortADDR2 1 4 }  { distances_ce1 MemPortCE2 1 1 }  { distances_we1 MemPortWE2 1 1 }  { distances_d1 MemPortDIN2 1 64 }  { distances_q1 MemPortDOUT2 0 64 } } }
	labels { ap_memory {  { labels_address0 mem_address 1 4 }  { labels_ce0 mem_ce 1 1 }  { labels_we0 mem_we 1 1 }  { labels_d0 mem_din 1 4 }  { labels_q0 mem_dout 0 4 }  { labels_address1 MemPortADDR2 1 4 }  { labels_ce1 MemPortCE2 1 1 }  { labels_we1 MemPortWE2 1 1 }  { labels_d1 MemPortDIN2 1 4 }  { labels_q1 MemPortDOUT2 0 4 } } }
}
