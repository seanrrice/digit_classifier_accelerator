
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set y_test_group [add_wave_group y_test(axi_master) -into $coutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $y_test_group]
set wdata_group [add_wave_group "Write Channel" -into $y_test_group]
set ctrl_group [add_wave_group "Handshakes" -into $y_test_group]
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_BUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_BID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_BRESP -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_RRESP -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_RUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_RID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_RDATA -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARREGION -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARQOS -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARPROT -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARBURST -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARLEN -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARADDR -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_WUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_WID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_WSTRB -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_WDATA -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWREGION -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWQOS -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWPROT -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWBURST -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWLEN -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWADDR -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_test_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/interrupt -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_BRESP -into $return_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_BREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_BVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_RRESP -into $return_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_RDATA -into $return_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_RREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_RVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_ARREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_ARVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_ARADDR -into $return_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_WSTRB -into $return_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_WDATA -into $return_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_WREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_WVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_AWREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_AWVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_AWADDR -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set y_train_group [add_wave_group y_train(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $y_train_group]
set wdata_group [add_wave_group "Write Channel" -into $y_train_group]
set ctrl_group [add_wave_group "Handshakes" -into $y_train_group]
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_BUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_BID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_BRESP -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_RRESP -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_RUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_RID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_RDATA -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARREGION -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARQOS -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARPROT -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARBURST -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARLEN -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARADDR -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_WUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_WID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_WSTRB -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_WDATA -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWREGION -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWQOS -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWPROT -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWBURST -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWLEN -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWADDR -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_y_train_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set X_train_group [add_wave_group X_train(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $X_train_group]
set wdata_group [add_wave_group "Write Channel" -into $X_train_group]
set ctrl_group [add_wave_group "Handshakes" -into $X_train_group]
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_BUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_BID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_BRESP -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_RRESP -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_RUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_RID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_RDATA -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARREGION -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARQOS -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARPROT -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARBURST -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARLEN -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARADDR -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_WUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_WID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_WSTRB -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_WDATA -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWREGION -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWQOS -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWPROT -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWBURST -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWLEN -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWADDR -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_train_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set X_test_group [add_wave_group X_test(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $X_test_group]
set wdata_group [add_wave_group "Write Channel" -into $X_test_group]
set ctrl_group [add_wave_group "Handshakes" -into $X_test_group]
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_BUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_BID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_BRESP -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_RRESP -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_RUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_RID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_RDATA -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARREGION -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARQOS -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARPROT -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARBURST -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARLEN -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARADDR -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_WUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_WID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_WSTRB -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_WDATA -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWREGION -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWQOS -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWPROT -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWBURST -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWLEN -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWADDR -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/m_axi_gmem_x_test_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set X_test__X_train__y_train__y_test_group [add_wave_group X_test__X_train__y_train__y_test(axi_slave) -into $cinputgroup]
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_BRESP -into $X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_BREADY -into $X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_BVALID -into $X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_RRESP -into $X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_RDATA -into $X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_RREADY -into $X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_RVALID -into $X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_ARREADY -into $X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_ARVALID -into $X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_ARADDR -into $X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_WSTRB -into $X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_WDATA -into $X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_WREADY -into $X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_WVALID -into $X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_AWREADY -into $X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_AWVALID -into $X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/s_axi_control_r_AWADDR -into $X_test__X_train__y_train__y_test_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/ap_done -into $blocksiggroup
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/ap_idle -into $blocksiggroup
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/ap_ready -into $blocksiggroup
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_knn_accelerator_top/AESL_inst_knn_accelerator/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_knn_accelerator_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_knn_accelerator_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_knn_accelerator_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_knn_accelerator_top/LENGTH_X_test -into $tb_portdepth_group -radix hex
add_wave /apatb_knn_accelerator_top/LENGTH_X_train -into $tb_portdepth_group -radix hex
add_wave /apatb_knn_accelerator_top/LENGTH_gmem_x_test -into $tb_portdepth_group -radix hex
add_wave /apatb_knn_accelerator_top/LENGTH_gmem_x_train -into $tb_portdepth_group -radix hex
add_wave /apatb_knn_accelerator_top/LENGTH_gmem_y_test -into $tb_portdepth_group -radix hex
add_wave /apatb_knn_accelerator_top/LENGTH_gmem_y_train -into $tb_portdepth_group -radix hex
add_wave /apatb_knn_accelerator_top/LENGTH_y_test -into $tb_portdepth_group -radix hex
add_wave /apatb_knn_accelerator_top/LENGTH_y_train -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_y_test_group [add_wave_group y_test(axi_master) -into $tbcoutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_y_test_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_y_test_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_y_test_group]
add_wave /apatb_knn_accelerator_top/gmem_y_test_BUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_BID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_BRESP -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_RRESP -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_RUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_RID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_RDATA -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARREGION -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARQOS -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARPROT -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARBURST -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARLEN -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARADDR -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_WUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_WID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_WSTRB -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_WDATA -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWREGION -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWQOS -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWPROT -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWBURST -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWLEN -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWADDR -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_test_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_knn_accelerator_top/control_INTERRUPT -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_BRESP -into $tb_return_group -radix hex
add_wave /apatb_knn_accelerator_top/control_BREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_BVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_RRESP -into $tb_return_group -radix hex
add_wave /apatb_knn_accelerator_top/control_RDATA -into $tb_return_group -radix hex
add_wave /apatb_knn_accelerator_top/control_RREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_RVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_ARREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_ARVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_ARADDR -into $tb_return_group -radix hex
add_wave /apatb_knn_accelerator_top/control_WSTRB -into $tb_return_group -radix hex
add_wave /apatb_knn_accelerator_top/control_WDATA -into $tb_return_group -radix hex
add_wave /apatb_knn_accelerator_top/control_WREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_WVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_AWREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_AWVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_AWADDR -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_y_train_group [add_wave_group y_train(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_y_train_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_y_train_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_y_train_group]
add_wave /apatb_knn_accelerator_top/gmem_y_train_BUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_BID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_BRESP -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_RRESP -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_RUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_RID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_RDATA -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARREGION -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARQOS -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARPROT -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARBURST -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARLEN -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARADDR -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_WUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_WID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_WSTRB -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_WDATA -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWREGION -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWQOS -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWPROT -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWBURST -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWLEN -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWADDR -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_y_train_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_X_train_group [add_wave_group X_train(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_X_train_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_X_train_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_X_train_group]
add_wave /apatb_knn_accelerator_top/gmem_x_train_BUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_BID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_BRESP -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_RRESP -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_RUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_RID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_RDATA -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARREGION -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARQOS -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARPROT -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARBURST -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARLEN -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARADDR -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_WUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_WID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_WSTRB -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_WDATA -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWREGION -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWQOS -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWPROT -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWBURST -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWLEN -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWADDR -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_train_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_X_test_group [add_wave_group X_test(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_X_test_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_X_test_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_X_test_group]
add_wave /apatb_knn_accelerator_top/gmem_x_test_BUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_BID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_BRESP -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_RRESP -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_RUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_RID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_RDATA -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARUSER -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARREGION -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARQOS -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARPROT -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARBURST -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARLEN -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARID -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARADDR -into $rdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_WUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_WID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_WSTRB -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_WDATA -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWUSER -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWREGION -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWQOS -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWPROT -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWBURST -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWLEN -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWID -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWADDR -into $wdata_group -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/gmem_x_test_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_X_test__X_train__y_train__y_test_group [add_wave_group X_test__X_train__y_train__y_test(axi_slave) -into $tbcinputgroup]
add_wave /apatb_knn_accelerator_top/control_r_BRESP -into $tb_X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/control_r_BREADY -into $tb_X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_r_BVALID -into $tb_X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_r_RRESP -into $tb_X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/control_r_RDATA -into $tb_X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/control_r_RREADY -into $tb_X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_r_RVALID -into $tb_X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_r_ARREADY -into $tb_X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_r_ARVALID -into $tb_X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_r_ARADDR -into $tb_X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/control_r_WSTRB -into $tb_X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/control_r_WDATA -into $tb_X_test__X_train__y_train__y_test_group -radix hex
add_wave /apatb_knn_accelerator_top/control_r_WREADY -into $tb_X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_r_WVALID -into $tb_X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_r_AWREADY -into $tb_X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_r_AWVALID -into $tb_X_test__X_train__y_train__y_test_group -color #ffff00 -radix hex
add_wave /apatb_knn_accelerator_top/control_r_AWADDR -into $tb_X_test__X_train__y_train__y_test_group -radix hex
save_wave_config knn_accelerator.wcfg
run all
quit

