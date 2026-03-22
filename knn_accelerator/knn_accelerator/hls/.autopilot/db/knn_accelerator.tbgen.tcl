set moduleName knn_accelerator
set isTopModule 1
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
set C_modelName {knn_accelerator}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem_x_test int 64 regular {axi_master 0}  }
	{ gmem_x_train int 64 regular {axi_master 0}  }
	{ gmem_y_train int 32 regular {axi_master 0}  }
	{ gmem_y_test int 32 regular {axi_master 1}  }
	{ X_test int 64 regular {axi_slave 0}  }
	{ X_train int 64 regular {axi_slave 0}  }
	{ y_train int 64 regular {axi_slave 0}  }
	{ y_test int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem_x_test", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "X_test","offset": { "type": "dynamic","port_name": "X_test","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_x_train", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "X_train","offset": { "type": "dynamic","port_name": "X_train","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_y_train", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "y_train","offset": { "type": "dynamic","port_name": "y_train","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_y_test", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "id_num" : 1, "bitSlice":[ {"cElement": [{"cName": "y_test","offset": { "type": "dynamic","port_name": "y_test","bundle": "control_r"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "X_test", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "X_train", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "y_train", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "y_test", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 217
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_x_test_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_x_test_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_x_test_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_x_test_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_x_test_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_x_test_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_x_test_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_x_test_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_x_test_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_x_test_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_x_test_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_x_test_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem_x_test_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_x_test_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_x_test_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_test_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_x_train_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_x_train_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_x_train_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_x_train_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_x_train_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_x_train_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_x_train_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_x_train_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_x_train_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_x_train_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_x_train_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_x_train_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_x_train_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_x_train_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_x_train_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_x_train_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_x_train_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_x_train_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_x_train_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_x_train_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_x_train_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_x_train_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_x_train_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_x_train_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_x_train_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_x_train_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_x_train_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem_x_train_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_x_train_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_x_train_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_x_train_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_x_train_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_x_train_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_x_train_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_y_train_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_y_train_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_y_train_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_y_train_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_y_train_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_y_train_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_y_train_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_y_train_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_y_train_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_y_train_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_y_train_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_y_train_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_y_train_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_y_train_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_y_train_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_y_train_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_y_train_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_y_train_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_y_train_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_y_train_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_y_train_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_y_train_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_y_train_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_y_train_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_y_train_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_y_train_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_y_train_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem_y_train_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_y_train_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_y_train_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_y_train_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_y_train_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_y_train_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_y_train_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_y_test_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_y_test_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_y_test_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_y_test_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_y_test_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_y_test_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_y_test_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_y_test_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_y_test_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_y_test_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_y_test_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_y_test_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_y_test_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_y_test_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_y_test_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_y_test_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_y_test_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_y_test_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_y_test_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_y_test_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_y_test_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_y_test_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_y_test_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_y_test_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_y_test_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_y_test_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_y_test_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem_y_test_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_y_test_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_y_test_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_y_test_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_y_test_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_y_test_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_y_test_BUSER sc_in sc_lv 1 signal 3 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_r_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_r_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_r_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_r_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_r_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_r_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"knn_accelerator","role":"start","value":"0","valid_bit":"0"},{"name":"knn_accelerator","role":"continue","value":"0","valid_bit":"4"},{"name":"knn_accelerator","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"knn_accelerator","role":"start","value":"0","valid_bit":"0"},{"name":"knn_accelerator","role":"done","value":"0","valid_bit":"1"},{"name":"knn_accelerator","role":"idle","value":"0","valid_bit":"2"},{"name":"knn_accelerator","role":"ready","value":"0","valid_bit":"3"},{"name":"knn_accelerator","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } },
	{ "name": "s_axi_control_r_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control_r", "role": "AWADDR" },"address":[{"name":"X_test","role":"data","value":"16"},{"name":"X_train","role":"data","value":"28"},{"name":"y_train","role":"data","value":"40"},{"name":"y_test","role":"data","value":"52"}] },
	{ "name": "s_axi_control_r_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWVALID" } },
	{ "name": "s_axi_control_r_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWREADY" } },
	{ "name": "s_axi_control_r_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WVALID" } },
	{ "name": "s_axi_control_r_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WREADY" } },
	{ "name": "s_axi_control_r_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "WDATA" } },
	{ "name": "s_axi_control_r_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control_r", "role": "WSTRB" } },
	{ "name": "s_axi_control_r_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control_r", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_r_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARVALID" } },
	{ "name": "s_axi_control_r_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARREADY" } },
	{ "name": "s_axi_control_r_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RVALID" } },
	{ "name": "s_axi_control_r_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RREADY" } },
	{ "name": "s_axi_control_r_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "RDATA" } },
	{ "name": "s_axi_control_r_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "RRESP" } },
	{ "name": "s_axi_control_r_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BVALID" } },
	{ "name": "s_axi_control_r_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BREADY" } },
	{ "name": "s_axi_control_r_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_x_test_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_x_test_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_x_test_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_x_test_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_x_test_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_x_test_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_x_test_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_x_test_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_x_test_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_x_test_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_x_test_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_x_test_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_x_test_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_x_test_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_x_test_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_x_test_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_x_test_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_x_test_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_x_test_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_x_test_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_x_test_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_x_test_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_x_test_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_x_test_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_x_test_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_x_test_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_x_test_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_x_test_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_x_test_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_x_test_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_x_test_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_x_test_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_x_test_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_x_test_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_x_test_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_x_test_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_x_test_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_x_test_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_x_test_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_x_test_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_x_test_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_x_test_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_x_test_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_x_test_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_x_test_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_test", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_x_train_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_x_train_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_x_train_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_x_train_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_x_train_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_x_train_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_x_train_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_x_train_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_x_train_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_x_train_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_x_train_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_x_train_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_x_train_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_x_train_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_x_train_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_x_train_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_x_train_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_x_train_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_x_train_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_x_train_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_x_train_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_x_train_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_x_train_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_x_train_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_x_train_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_x_train_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_x_train_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_x_train_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_x_train_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_x_train_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_x_train_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_x_train_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_x_train_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_x_train_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_x_train_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_x_train_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_x_train_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_x_train_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_x_train_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_x_train_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_x_train_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_x_train_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_x_train_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_x_train_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_x_train_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_x_train", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_y_train_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_y_train_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_y_train_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_y_train_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_y_train_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_y_train_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_y_train_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_y_train_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_y_train_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_y_train_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_y_train_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_y_train_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_y_train_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_y_train_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_y_train_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_y_train_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_y_train_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_y_train_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_y_train_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_y_train_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_y_train_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_y_train_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_y_train_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_y_train_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_y_train_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_y_train_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_y_train_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_y_train_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_y_train_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_y_train_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_y_train_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_y_train_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_y_train_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_y_train_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_y_train_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_y_train_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_y_train_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_y_train_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_y_train_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_y_train_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_y_train_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_y_train_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_y_train_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_y_train_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_y_train_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_train", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_y_test_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_y_test_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_y_test_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_y_test_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_y_test_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_y_test_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_y_test_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_y_test_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_y_test_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_y_test_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_y_test_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_y_test_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_y_test_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_y_test_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_y_test_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_y_test_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_y_test_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_y_test_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_y_test_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_y_test_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_y_test_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_y_test_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_y_test_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_y_test_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_y_test_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_y_test_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_y_test_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_y_test_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_y_test_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_y_test_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_y_test_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_y_test_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_y_test_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_y_test_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_y_test_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_y_test_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_y_test_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_y_test_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_y_test_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_y_test_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_y_test_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_y_test_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_y_test_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_y_test_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_y_test_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_y_test", "role": "BUSER" }}  ]}

set ArgLastReadFirstWriteLatency {
	knn_accelerator {
		gmem_x_test {Type I LastRead 11 FirstWrite -1}
		gmem_x_train {Type I LastRead 11 FirstWrite -1}
		gmem_y_train {Type I LastRead 11 FirstWrite -1}
		gmem_y_test {Type O LastRead 3 FirstWrite 7}
		X_test {Type I LastRead 0 FirstWrite -1}
		X_train {Type I LastRead 0 FirstWrite -1}
		y_train {Type I LastRead 0 FirstWrite -1}
		y_test {Type I LastRead 0 FirstWrite -1}}
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
		labels {Type IO LastRead 6 FirstWrite 6}}
	knn_majority_vote {
		top_k_labels_read {Type I LastRead 0 FirstWrite -1}
		top_k_labels_read_8 {Type I LastRead 0 FirstWrite -1}
		top_k_labels_read_9 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "120747", "Max" : "124347"}
	, {"Name" : "Interval", "Min" : "120748", "Max" : "124348"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_x_test { m_axi {  { m_axi_gmem_x_test_AWVALID VALID 1 1 }  { m_axi_gmem_x_test_AWREADY READY 0 1 }  { m_axi_gmem_x_test_AWADDR ADDR 1 64 }  { m_axi_gmem_x_test_AWID ID 1 1 }  { m_axi_gmem_x_test_AWLEN SIZE 1 8 }  { m_axi_gmem_x_test_AWSIZE BURST 1 3 }  { m_axi_gmem_x_test_AWBURST LOCK 1 2 }  { m_axi_gmem_x_test_AWLOCK CACHE 1 2 }  { m_axi_gmem_x_test_AWCACHE PROT 1 4 }  { m_axi_gmem_x_test_AWPROT QOS 1 3 }  { m_axi_gmem_x_test_AWQOS REGION 1 4 }  { m_axi_gmem_x_test_AWREGION USER 1 4 }  { m_axi_gmem_x_test_AWUSER DATA 1 1 }  { m_axi_gmem_x_test_WVALID VALID 1 1 }  { m_axi_gmem_x_test_WREADY READY 0 1 }  { m_axi_gmem_x_test_WDATA FIFONUM 1 64 }  { m_axi_gmem_x_test_WSTRB STRB 1 8 }  { m_axi_gmem_x_test_WLAST LAST 1 1 }  { m_axi_gmem_x_test_WID ID 1 1 }  { m_axi_gmem_x_test_WUSER DATA 1 1 }  { m_axi_gmem_x_test_ARVALID VALID 1 1 }  { m_axi_gmem_x_test_ARREADY READY 0 1 }  { m_axi_gmem_x_test_ARADDR ADDR 1 64 }  { m_axi_gmem_x_test_ARID ID 1 1 }  { m_axi_gmem_x_test_ARLEN SIZE 1 8 }  { m_axi_gmem_x_test_ARSIZE BURST 1 3 }  { m_axi_gmem_x_test_ARBURST LOCK 1 2 }  { m_axi_gmem_x_test_ARLOCK CACHE 1 2 }  { m_axi_gmem_x_test_ARCACHE PROT 1 4 }  { m_axi_gmem_x_test_ARPROT QOS 1 3 }  { m_axi_gmem_x_test_ARQOS REGION 1 4 }  { m_axi_gmem_x_test_ARREGION USER 1 4 }  { m_axi_gmem_x_test_ARUSER DATA 1 1 }  { m_axi_gmem_x_test_RVALID VALID 0 1 }  { m_axi_gmem_x_test_RREADY READY 1 1 }  { m_axi_gmem_x_test_RDATA FIFONUM 0 64 }  { m_axi_gmem_x_test_RLAST LAST 0 1 }  { m_axi_gmem_x_test_RID ID 0 1 }  { m_axi_gmem_x_test_RUSER DATA 0 1 }  { m_axi_gmem_x_test_RRESP RESP 0 2 }  { m_axi_gmem_x_test_BVALID VALID 0 1 }  { m_axi_gmem_x_test_BREADY READY 1 1 }  { m_axi_gmem_x_test_BRESP RESP 0 2 }  { m_axi_gmem_x_test_BID ID 0 1 }  { m_axi_gmem_x_test_BUSER DATA 0 1 } } }
	gmem_x_train { m_axi {  { m_axi_gmem_x_train_AWVALID VALID 1 1 }  { m_axi_gmem_x_train_AWREADY READY 0 1 }  { m_axi_gmem_x_train_AWADDR ADDR 1 64 }  { m_axi_gmem_x_train_AWID ID 1 1 }  { m_axi_gmem_x_train_AWLEN SIZE 1 8 }  { m_axi_gmem_x_train_AWSIZE BURST 1 3 }  { m_axi_gmem_x_train_AWBURST LOCK 1 2 }  { m_axi_gmem_x_train_AWLOCK CACHE 1 2 }  { m_axi_gmem_x_train_AWCACHE PROT 1 4 }  { m_axi_gmem_x_train_AWPROT QOS 1 3 }  { m_axi_gmem_x_train_AWQOS REGION 1 4 }  { m_axi_gmem_x_train_AWREGION USER 1 4 }  { m_axi_gmem_x_train_AWUSER DATA 1 1 }  { m_axi_gmem_x_train_WVALID VALID 1 1 }  { m_axi_gmem_x_train_WREADY READY 0 1 }  { m_axi_gmem_x_train_WDATA FIFONUM 1 64 }  { m_axi_gmem_x_train_WSTRB STRB 1 8 }  { m_axi_gmem_x_train_WLAST LAST 1 1 }  { m_axi_gmem_x_train_WID ID 1 1 }  { m_axi_gmem_x_train_WUSER DATA 1 1 }  { m_axi_gmem_x_train_ARVALID VALID 1 1 }  { m_axi_gmem_x_train_ARREADY READY 0 1 }  { m_axi_gmem_x_train_ARADDR ADDR 1 64 }  { m_axi_gmem_x_train_ARID ID 1 1 }  { m_axi_gmem_x_train_ARLEN SIZE 1 8 }  { m_axi_gmem_x_train_ARSIZE BURST 1 3 }  { m_axi_gmem_x_train_ARBURST LOCK 1 2 }  { m_axi_gmem_x_train_ARLOCK CACHE 1 2 }  { m_axi_gmem_x_train_ARCACHE PROT 1 4 }  { m_axi_gmem_x_train_ARPROT QOS 1 3 }  { m_axi_gmem_x_train_ARQOS REGION 1 4 }  { m_axi_gmem_x_train_ARREGION USER 1 4 }  { m_axi_gmem_x_train_ARUSER DATA 1 1 }  { m_axi_gmem_x_train_RVALID VALID 0 1 }  { m_axi_gmem_x_train_RREADY READY 1 1 }  { m_axi_gmem_x_train_RDATA FIFONUM 0 64 }  { m_axi_gmem_x_train_RLAST LAST 0 1 }  { m_axi_gmem_x_train_RID ID 0 1 }  { m_axi_gmem_x_train_RUSER DATA 0 1 }  { m_axi_gmem_x_train_RRESP RESP 0 2 }  { m_axi_gmem_x_train_BVALID VALID 0 1 }  { m_axi_gmem_x_train_BREADY READY 1 1 }  { m_axi_gmem_x_train_BRESP RESP 0 2 }  { m_axi_gmem_x_train_BID ID 0 1 }  { m_axi_gmem_x_train_BUSER DATA 0 1 } } }
	gmem_y_train { m_axi {  { m_axi_gmem_y_train_AWVALID VALID 1 1 }  { m_axi_gmem_y_train_AWREADY READY 0 1 }  { m_axi_gmem_y_train_AWADDR ADDR 1 64 }  { m_axi_gmem_y_train_AWID ID 1 1 }  { m_axi_gmem_y_train_AWLEN SIZE 1 8 }  { m_axi_gmem_y_train_AWSIZE BURST 1 3 }  { m_axi_gmem_y_train_AWBURST LOCK 1 2 }  { m_axi_gmem_y_train_AWLOCK CACHE 1 2 }  { m_axi_gmem_y_train_AWCACHE PROT 1 4 }  { m_axi_gmem_y_train_AWPROT QOS 1 3 }  { m_axi_gmem_y_train_AWQOS REGION 1 4 }  { m_axi_gmem_y_train_AWREGION USER 1 4 }  { m_axi_gmem_y_train_AWUSER DATA 1 1 }  { m_axi_gmem_y_train_WVALID VALID 1 1 }  { m_axi_gmem_y_train_WREADY READY 0 1 }  { m_axi_gmem_y_train_WDATA FIFONUM 1 32 }  { m_axi_gmem_y_train_WSTRB STRB 1 4 }  { m_axi_gmem_y_train_WLAST LAST 1 1 }  { m_axi_gmem_y_train_WID ID 1 1 }  { m_axi_gmem_y_train_WUSER DATA 1 1 }  { m_axi_gmem_y_train_ARVALID VALID 1 1 }  { m_axi_gmem_y_train_ARREADY READY 0 1 }  { m_axi_gmem_y_train_ARADDR ADDR 1 64 }  { m_axi_gmem_y_train_ARID ID 1 1 }  { m_axi_gmem_y_train_ARLEN SIZE 1 8 }  { m_axi_gmem_y_train_ARSIZE BURST 1 3 }  { m_axi_gmem_y_train_ARBURST LOCK 1 2 }  { m_axi_gmem_y_train_ARLOCK CACHE 1 2 }  { m_axi_gmem_y_train_ARCACHE PROT 1 4 }  { m_axi_gmem_y_train_ARPROT QOS 1 3 }  { m_axi_gmem_y_train_ARQOS REGION 1 4 }  { m_axi_gmem_y_train_ARREGION USER 1 4 }  { m_axi_gmem_y_train_ARUSER DATA 1 1 }  { m_axi_gmem_y_train_RVALID VALID 0 1 }  { m_axi_gmem_y_train_RREADY READY 1 1 }  { m_axi_gmem_y_train_RDATA FIFONUM 0 32 }  { m_axi_gmem_y_train_RLAST LAST 0 1 }  { m_axi_gmem_y_train_RID ID 0 1 }  { m_axi_gmem_y_train_RUSER DATA 0 1 }  { m_axi_gmem_y_train_RRESP RESP 0 2 }  { m_axi_gmem_y_train_BVALID VALID 0 1 }  { m_axi_gmem_y_train_BREADY READY 1 1 }  { m_axi_gmem_y_train_BRESP RESP 0 2 }  { m_axi_gmem_y_train_BID ID 0 1 }  { m_axi_gmem_y_train_BUSER DATA 0 1 } } }
	gmem_y_test { m_axi {  { m_axi_gmem_y_test_AWVALID VALID 1 1 }  { m_axi_gmem_y_test_AWREADY READY 0 1 }  { m_axi_gmem_y_test_AWADDR ADDR 1 64 }  { m_axi_gmem_y_test_AWID ID 1 1 }  { m_axi_gmem_y_test_AWLEN SIZE 1 8 }  { m_axi_gmem_y_test_AWSIZE BURST 1 3 }  { m_axi_gmem_y_test_AWBURST LOCK 1 2 }  { m_axi_gmem_y_test_AWLOCK CACHE 1 2 }  { m_axi_gmem_y_test_AWCACHE PROT 1 4 }  { m_axi_gmem_y_test_AWPROT QOS 1 3 }  { m_axi_gmem_y_test_AWQOS REGION 1 4 }  { m_axi_gmem_y_test_AWREGION USER 1 4 }  { m_axi_gmem_y_test_AWUSER DATA 1 1 }  { m_axi_gmem_y_test_WVALID VALID 1 1 }  { m_axi_gmem_y_test_WREADY READY 0 1 }  { m_axi_gmem_y_test_WDATA FIFONUM 1 32 }  { m_axi_gmem_y_test_WSTRB STRB 1 4 }  { m_axi_gmem_y_test_WLAST LAST 1 1 }  { m_axi_gmem_y_test_WID ID 1 1 }  { m_axi_gmem_y_test_WUSER DATA 1 1 }  { m_axi_gmem_y_test_ARVALID VALID 1 1 }  { m_axi_gmem_y_test_ARREADY READY 0 1 }  { m_axi_gmem_y_test_ARADDR ADDR 1 64 }  { m_axi_gmem_y_test_ARID ID 1 1 }  { m_axi_gmem_y_test_ARLEN SIZE 1 8 }  { m_axi_gmem_y_test_ARSIZE BURST 1 3 }  { m_axi_gmem_y_test_ARBURST LOCK 1 2 }  { m_axi_gmem_y_test_ARLOCK CACHE 1 2 }  { m_axi_gmem_y_test_ARCACHE PROT 1 4 }  { m_axi_gmem_y_test_ARPROT QOS 1 3 }  { m_axi_gmem_y_test_ARQOS REGION 1 4 }  { m_axi_gmem_y_test_ARREGION USER 1 4 }  { m_axi_gmem_y_test_ARUSER DATA 1 1 }  { m_axi_gmem_y_test_RVALID VALID 0 1 }  { m_axi_gmem_y_test_RREADY READY 1 1 }  { m_axi_gmem_y_test_RDATA FIFONUM 0 32 }  { m_axi_gmem_y_test_RLAST LAST 0 1 }  { m_axi_gmem_y_test_RID ID 0 1 }  { m_axi_gmem_y_test_RUSER DATA 0 1 }  { m_axi_gmem_y_test_RRESP RESP 0 2 }  { m_axi_gmem_y_test_BVALID VALID 0 1 }  { m_axi_gmem_y_test_BREADY READY 1 1 }  { m_axi_gmem_y_test_BRESP RESP 0 2 }  { m_axi_gmem_y_test_BID ID 0 1 }  { m_axi_gmem_y_test_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_x_test { CHANNEL_NUM 0 BUNDLE gmem_x_test NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_x_train { CHANNEL_NUM 0 BUNDLE gmem_x_train NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_y_test { CHANNEL_NUM 0 BUNDLE gmem_y_test NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict gmem_y_train { CHANNEL_NUM 0 BUNDLE gmem_y_train NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_x_test 1 }
	{ gmem_x_train 1 }
	{ gmem_y_train 1 }
	{ gmem_y_test 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_x_test 1 }
	{ gmem_x_train 1 }
	{ gmem_y_train 1 }
	{ gmem_y_test 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
