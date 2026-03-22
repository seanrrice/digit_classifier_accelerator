set moduleName knn_distance_and_sort
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 8
set C_modelName {knn_distance_and_sort}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem_x_test int 64 regular {axi_master 0}  }
	{ test_point int 64 regular  }
	{ gmem_x_train int 64 regular {axi_master 0}  }
	{ X_train int 64 regular  }
	{ gmem_y_train int 32 regular {axi_master 0}  }
	{ y_train int 64 regular  }
	{ top_k_labels_0 int 4 regular {pointer 1}  }
	{ top_k_labels_1 int 4 regular {pointer 1}  }
	{ top_k_labels_2 int 4 regular {pointer 1}  }
	{ idx int 9 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem_x_test", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "X_test","offset": { "type": "dynamic","port_name": "X_test","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "test_point", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_x_train", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "X_train","offset": { "type": "dynamic","port_name": "X_train","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "X_train", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_y_train", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 0, "bitSlice":[ {"cElement": [{"cName": "y_train","offset": { "type": "dynamic","port_name": "y_train","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "y_train", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "top_k_labels_0", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_k_labels_1", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "top_k_labels_2", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "idx", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 154
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_x_test_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_x_test_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_x_test_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_x_test_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_x_test_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_x_test_0_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_x_test_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_x_test_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_x_test_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_x_test_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_x_test_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem_x_test_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem_x_test_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ test_point sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem_x_train_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_x_train_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_x_train_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_x_train_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_x_train_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_x_train_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_x_train_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_x_train_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_x_train_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_x_train_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_x_train_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_x_train_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_WDATA sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_x_train_0_WSTRB sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_x_train_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_x_train_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_x_train_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_x_train_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_x_train_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_x_train_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_x_train_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_x_train_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_x_train_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_x_train_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_x_train_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_x_train_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_x_train_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_x_train_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_RDATA sc_in sc_lv 64 signal 2 } 
	{ m_axi_gmem_x_train_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_x_train_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gmem_x_train_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_x_train_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_x_train_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_x_train_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_x_train_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_x_train_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ X_train sc_in sc_lv 64 signal 3 } 
	{ m_axi_gmem_y_train_0_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_y_train_0_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_y_train_0_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem_y_train_0_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_y_train_0_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_y_train_0_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_y_train_0_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_y_train_0_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_y_train_0_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_y_train_0_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_y_train_0_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_y_train_0_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem_y_train_0_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_y_train_0_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_y_train_0_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_y_train_0_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_y_train_0_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_y_train_0_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem_y_train_0_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_y_train_0_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_y_train_0_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_y_train_0_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_y_train_0_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_y_train_0_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_y_train_0_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_y_train_0_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_y_train_0_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_gmem_y_train_0_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_y_train_0_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_gmem_y_train_0_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_y_train_0_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem_y_train_0_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_y_train_0_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem_y_train_0_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_y_train_0_BUSER sc_in sc_lv 1 signal 4 } 
	{ y_train sc_in sc_lv 64 signal 5 } 
	{ top_k_labels_0 sc_out sc_lv 4 signal 6 } 
	{ top_k_labels_0_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ top_k_labels_1 sc_out sc_lv 4 signal 7 } 
	{ top_k_labels_1_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ top_k_labels_2 sc_out sc_lv 4 signal 8 } 
	{ top_k_labels_2_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ idx sc_in sc_lv 9 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_x_test_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_x_test_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_x_test_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_x_test_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_x_test_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_x_test_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_x_test_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_x_test_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_x_test_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_x_test_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_x_test_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_x_test_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_x_test_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_x_test_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_x_test_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_x_test_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_x_test_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_x_test_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_x_test_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_x_test_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_x_test_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_x_test_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "0_BUSER" }} , 
 	{ "name": "test_point", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "test_point", "role": "default" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_x_train_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_x_train_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_x_train_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_x_train_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_x_train_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_x_train_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_x_train_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_x_train_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_x_train_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_x_train_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_x_train_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_x_train_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_x_train_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_x_train_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_x_train_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_x_train_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_x_train_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_x_train_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_x_train_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_x_train_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_x_train_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_x_train_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "0_BUSER" }} , 
 	{ "name": "X_train", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "X_train", "role": "default" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_y_train_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_y_train_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_y_train_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_y_train_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_y_train_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_y_train_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_y_train_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_y_train_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_y_train_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_y_train_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_y_train_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_y_train_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_y_train_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_y_train_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_y_train_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_y_train_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_y_train_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_y_train_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_y_train_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_y_train_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_y_train_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_y_train_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "0_BUSER" }} , 
 	{ "name": "y_train", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_train", "role": "default" }} , 
 	{ "name": "top_k_labels_0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_0", "role": "default" }} , 
 	{ "name": "top_k_labels_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "top_k_labels_0", "role": "ap_vld" }} , 
 	{ "name": "top_k_labels_1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_1", "role": "default" }} , 
 	{ "name": "top_k_labels_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "top_k_labels_1", "role": "ap_vld" }} , 
 	{ "name": "top_k_labels_2", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "top_k_labels_2", "role": "default" }} , 
 	{ "name": "top_k_labels_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "top_k_labels_2", "role": "ap_vld" }} , 
 	{ "name": "idx", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "idx", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	knn_distance_and_sort {
		gmem_x_test {Type I LastRead 11 FirstWrite -1}
		test_point {Type I LastRead 10 FirstWrite -1}
		gmem_x_train {Type I LastRead 11 FirstWrite -1}
		X_train {Type I LastRead 2 FirstWrite -1}
		gmem_y_train {Type I LastRead 11 FirstWrite -1}
		y_train {Type I LastRead 2 FirstWrite -1}
		top_k_labels_0 {Type O LastRead -1 FirstWrite 1}
		top_k_labels_1 {Type O LastRead -1 FirstWrite 1}
		top_k_labels_2 {Type O LastRead -1 FirstWrite 1}
		idx {Type I LastRead 10 FirstWrite -1}}
	knn_distance_and_sort_Outline_init_top_k {
		top_k_labels_0 {Type O LastRead -1 FirstWrite 1}
		top_k_labels_2 {Type O LastRead -1 FirstWrite 1}
		top_k_labels_1 {Type O LastRead -1 FirstWrite 1}}
	knn_distance_and_sort_Outline_train_loop {
		distances {Type O LastRead -1 FirstWrite 67}
		labels {Type O LastRead -1 FirstWrite 12}
		gmem_y_train {Type I LastRead 11 FirstWrite -1}
		sext_ln41_1 {Type I LastRead 0 FirstWrite -1}
		gmem_x_test {Type I LastRead 11 FirstWrite -1}
		sext_ln52 {Type I LastRead 0 FirstWrite -1}
		gmem_x_train {Type I LastRead 11 FirstWrite -1}
		sext_ln41 {Type I LastRead 0 FirstWrite -1}}
	knn_distance_and_sort_Outline_sort_loop_i {
		distances {Type IO LastRead 3 FirstWrite 6}
		labels {Type IO LastRead 6 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12029", "Max" : "12389"}
	, {"Name" : "Interval", "Min" : "12029", "Max" : "12389"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_x_test_0_AWVALID VALID 1 1 }  { m_axi_gmem_x_test_0_AWREADY READY 0 1 }  { m_axi_gmem_x_test_0_AWADDR ADDR 1 64 }  { m_axi_gmem_x_test_0_AWID ID 1 1 }  { m_axi_gmem_x_test_0_AWLEN SIZE 1 32 }  { m_axi_gmem_x_test_0_AWSIZE BURST 1 3 }  { m_axi_gmem_x_test_0_AWBURST LOCK 1 2 }  { m_axi_gmem_x_test_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_x_test_0_AWCACHE PROT 1 4 }  { m_axi_gmem_x_test_0_AWPROT QOS 1 3 }  { m_axi_gmem_x_test_0_AWQOS REGION 1 4 }  { m_axi_gmem_x_test_0_AWREGION USER 1 4 }  { m_axi_gmem_x_test_0_AWUSER DATA 1 1 }  { m_axi_gmem_x_test_0_WVALID VALID 1 1 }  { m_axi_gmem_x_test_0_WREADY READY 0 1 }  { m_axi_gmem_x_test_0_WDATA FIFONUM 1 64 }  { m_axi_gmem_x_test_0_WSTRB STRB 1 8 }  { m_axi_gmem_x_test_0_WLAST LAST 1 1 }  { m_axi_gmem_x_test_0_WID ID 1 1 }  { m_axi_gmem_x_test_0_WUSER DATA 1 1 }  { m_axi_gmem_x_test_0_ARVALID VALID 1 1 }  { m_axi_gmem_x_test_0_ARREADY READY 0 1 }  { m_axi_gmem_x_test_0_ARADDR ADDR 1 64 }  { m_axi_gmem_x_test_0_ARID ID 1 1 }  { m_axi_gmem_x_test_0_ARLEN SIZE 1 32 }  { m_axi_gmem_x_test_0_ARSIZE BURST 1 3 }  { m_axi_gmem_x_test_0_ARBURST LOCK 1 2 }  { m_axi_gmem_x_test_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_x_test_0_ARCACHE PROT 1 4 }  { m_axi_gmem_x_test_0_ARPROT QOS 1 3 }  { m_axi_gmem_x_test_0_ARQOS REGION 1 4 }  { m_axi_gmem_x_test_0_ARREGION USER 1 4 }  { m_axi_gmem_x_test_0_ARUSER DATA 1 1 }  { m_axi_gmem_x_test_0_RVALID VALID 0 1 }  { m_axi_gmem_x_test_0_RREADY READY 1 1 }  { m_axi_gmem_x_test_0_RDATA FIFONUM 0 64 }  { m_axi_gmem_x_test_0_RLAST LAST 0 1 }  { m_axi_gmem_x_test_0_RID ID 0 1 }  { m_axi_gmem_x_test_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_x_test_0_RUSER DATA 0 1 }  { m_axi_gmem_x_test_0_RRESP RESP 0 2 }  { m_axi_gmem_x_test_0_BVALID VALID 0 1 }  { m_axi_gmem_x_test_0_BREADY READY 1 1 }  { m_axi_gmem_x_test_0_BRESP RESP 0 2 }  { m_axi_gmem_x_test_0_BID ID 0 1 }  { m_axi_gmem_x_test_0_BUSER DATA 0 1 } } }
	test_point { ap_none {  { test_point in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem_x_train_0_AWVALID VALID 1 1 }  { m_axi_gmem_x_train_0_AWREADY READY 0 1 }  { m_axi_gmem_x_train_0_AWADDR ADDR 1 64 }  { m_axi_gmem_x_train_0_AWID ID 1 1 }  { m_axi_gmem_x_train_0_AWLEN SIZE 1 32 }  { m_axi_gmem_x_train_0_AWSIZE BURST 1 3 }  { m_axi_gmem_x_train_0_AWBURST LOCK 1 2 }  { m_axi_gmem_x_train_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_x_train_0_AWCACHE PROT 1 4 }  { m_axi_gmem_x_train_0_AWPROT QOS 1 3 }  { m_axi_gmem_x_train_0_AWQOS REGION 1 4 }  { m_axi_gmem_x_train_0_AWREGION USER 1 4 }  { m_axi_gmem_x_train_0_AWUSER DATA 1 1 }  { m_axi_gmem_x_train_0_WVALID VALID 1 1 }  { m_axi_gmem_x_train_0_WREADY READY 0 1 }  { m_axi_gmem_x_train_0_WDATA FIFONUM 1 64 }  { m_axi_gmem_x_train_0_WSTRB STRB 1 8 }  { m_axi_gmem_x_train_0_WLAST LAST 1 1 }  { m_axi_gmem_x_train_0_WID ID 1 1 }  { m_axi_gmem_x_train_0_WUSER DATA 1 1 }  { m_axi_gmem_x_train_0_ARVALID VALID 1 1 }  { m_axi_gmem_x_train_0_ARREADY READY 0 1 }  { m_axi_gmem_x_train_0_ARADDR ADDR 1 64 }  { m_axi_gmem_x_train_0_ARID ID 1 1 }  { m_axi_gmem_x_train_0_ARLEN SIZE 1 32 }  { m_axi_gmem_x_train_0_ARSIZE BURST 1 3 }  { m_axi_gmem_x_train_0_ARBURST LOCK 1 2 }  { m_axi_gmem_x_train_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_x_train_0_ARCACHE PROT 1 4 }  { m_axi_gmem_x_train_0_ARPROT QOS 1 3 }  { m_axi_gmem_x_train_0_ARQOS REGION 1 4 }  { m_axi_gmem_x_train_0_ARREGION USER 1 4 }  { m_axi_gmem_x_train_0_ARUSER DATA 1 1 }  { m_axi_gmem_x_train_0_RVALID VALID 0 1 }  { m_axi_gmem_x_train_0_RREADY READY 1 1 }  { m_axi_gmem_x_train_0_RDATA FIFONUM 0 64 }  { m_axi_gmem_x_train_0_RLAST LAST 0 1 }  { m_axi_gmem_x_train_0_RID ID 0 1 }  { m_axi_gmem_x_train_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_x_train_0_RUSER DATA 0 1 }  { m_axi_gmem_x_train_0_RRESP RESP 0 2 }  { m_axi_gmem_x_train_0_BVALID VALID 0 1 }  { m_axi_gmem_x_train_0_BREADY READY 1 1 }  { m_axi_gmem_x_train_0_BRESP RESP 0 2 }  { m_axi_gmem_x_train_0_BID ID 0 1 }  { m_axi_gmem_x_train_0_BUSER DATA 0 1 } } }
	X_train { ap_none {  { X_train in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem_y_train_0_AWVALID VALID 1 1 }  { m_axi_gmem_y_train_0_AWREADY READY 0 1 }  { m_axi_gmem_y_train_0_AWADDR ADDR 1 64 }  { m_axi_gmem_y_train_0_AWID ID 1 1 }  { m_axi_gmem_y_train_0_AWLEN SIZE 1 32 }  { m_axi_gmem_y_train_0_AWSIZE BURST 1 3 }  { m_axi_gmem_y_train_0_AWBURST LOCK 1 2 }  { m_axi_gmem_y_train_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_y_train_0_AWCACHE PROT 1 4 }  { m_axi_gmem_y_train_0_AWPROT QOS 1 3 }  { m_axi_gmem_y_train_0_AWQOS REGION 1 4 }  { m_axi_gmem_y_train_0_AWREGION USER 1 4 }  { m_axi_gmem_y_train_0_AWUSER DATA 1 1 }  { m_axi_gmem_y_train_0_WVALID VALID 1 1 }  { m_axi_gmem_y_train_0_WREADY READY 0 1 }  { m_axi_gmem_y_train_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_y_train_0_WSTRB STRB 1 4 }  { m_axi_gmem_y_train_0_WLAST LAST 1 1 }  { m_axi_gmem_y_train_0_WID ID 1 1 }  { m_axi_gmem_y_train_0_WUSER DATA 1 1 }  { m_axi_gmem_y_train_0_ARVALID VALID 1 1 }  { m_axi_gmem_y_train_0_ARREADY READY 0 1 }  { m_axi_gmem_y_train_0_ARADDR ADDR 1 64 }  { m_axi_gmem_y_train_0_ARID ID 1 1 }  { m_axi_gmem_y_train_0_ARLEN SIZE 1 32 }  { m_axi_gmem_y_train_0_ARSIZE BURST 1 3 }  { m_axi_gmem_y_train_0_ARBURST LOCK 1 2 }  { m_axi_gmem_y_train_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_y_train_0_ARCACHE PROT 1 4 }  { m_axi_gmem_y_train_0_ARPROT QOS 1 3 }  { m_axi_gmem_y_train_0_ARQOS REGION 1 4 }  { m_axi_gmem_y_train_0_ARREGION USER 1 4 }  { m_axi_gmem_y_train_0_ARUSER DATA 1 1 }  { m_axi_gmem_y_train_0_RVALID VALID 0 1 }  { m_axi_gmem_y_train_0_RREADY READY 1 1 }  { m_axi_gmem_y_train_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_y_train_0_RLAST LAST 0 1 }  { m_axi_gmem_y_train_0_RID ID 0 1 }  { m_axi_gmem_y_train_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_y_train_0_RUSER DATA 0 1 }  { m_axi_gmem_y_train_0_RRESP RESP 0 2 }  { m_axi_gmem_y_train_0_BVALID VALID 0 1 }  { m_axi_gmem_y_train_0_BREADY READY 1 1 }  { m_axi_gmem_y_train_0_BRESP RESP 0 2 }  { m_axi_gmem_y_train_0_BID ID 0 1 }  { m_axi_gmem_y_train_0_BUSER DATA 0 1 } } }
	y_train { ap_none {  { y_train in_data 0 64 } } }
	top_k_labels_0 { ap_vld {  { top_k_labels_0 out_data 1 4 }  { top_k_labels_0_ap_vld out_vld 1 1 } } }
	top_k_labels_1 { ap_vld {  { top_k_labels_1 out_data 1 4 }  { top_k_labels_1_ap_vld out_vld 1 1 } } }
	top_k_labels_2 { ap_vld {  { top_k_labels_2 out_data 1 4 }  { top_k_labels_2_ap_vld out_vld 1 1 } } }
	idx { ap_none {  { idx in_data 0 9 } } }
}
