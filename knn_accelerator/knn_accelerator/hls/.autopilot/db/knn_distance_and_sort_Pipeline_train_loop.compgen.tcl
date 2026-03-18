# This script segment is generated automatically by AutoPilot

set name knn_accelerator_dadddsub_64ns_64ns_64_7_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dsub} IMPL {fulldsp} LATENCY 6 ALLOW_PRAGMA 1
}


set name knn_accelerator_dmul_64ns_64ns_64_7_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dmul} IMPL {maxdsp} LATENCY 6 ALLOW_PRAGMA 1
}


set name knn_accelerator_dsqrt_64ns_64ns_64_57_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dsqrt} IMPL {fabric} LATENCY 56 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name distances \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename distances \
    op interface \
    ports { distances_address0 { O 11 vector } distances_ce0 { O 1 bit } distances_we0 { O 1 bit } distances_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'distances'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name labels \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename labels \
    op interface \
    ports { labels_address0 { O 11 vector } labels_ce0 { O 1 bit } labels_we0 { O 1 bit } labels_d0 { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'labels'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name gmem_x_test \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_x_test \
    op interface \
    ports { m_axi_gmem_x_test_0_AWVALID { O 1 bit } m_axi_gmem_x_test_0_AWREADY { I 1 bit } m_axi_gmem_x_test_0_AWADDR { O 64 vector } m_axi_gmem_x_test_0_AWID { O 1 vector } m_axi_gmem_x_test_0_AWLEN { O 32 vector } m_axi_gmem_x_test_0_AWSIZE { O 3 vector } m_axi_gmem_x_test_0_AWBURST { O 2 vector } m_axi_gmem_x_test_0_AWLOCK { O 2 vector } m_axi_gmem_x_test_0_AWCACHE { O 4 vector } m_axi_gmem_x_test_0_AWPROT { O 3 vector } m_axi_gmem_x_test_0_AWQOS { O 4 vector } m_axi_gmem_x_test_0_AWREGION { O 4 vector } m_axi_gmem_x_test_0_AWUSER { O 1 vector } m_axi_gmem_x_test_0_WVALID { O 1 bit } m_axi_gmem_x_test_0_WREADY { I 1 bit } m_axi_gmem_x_test_0_WDATA { O 64 vector } m_axi_gmem_x_test_0_WSTRB { O 8 vector } m_axi_gmem_x_test_0_WLAST { O 1 bit } m_axi_gmem_x_test_0_WID { O 1 vector } m_axi_gmem_x_test_0_WUSER { O 1 vector } m_axi_gmem_x_test_0_ARVALID { O 1 bit } m_axi_gmem_x_test_0_ARREADY { I 1 bit } m_axi_gmem_x_test_0_ARADDR { O 64 vector } m_axi_gmem_x_test_0_ARID { O 1 vector } m_axi_gmem_x_test_0_ARLEN { O 32 vector } m_axi_gmem_x_test_0_ARSIZE { O 3 vector } m_axi_gmem_x_test_0_ARBURST { O 2 vector } m_axi_gmem_x_test_0_ARLOCK { O 2 vector } m_axi_gmem_x_test_0_ARCACHE { O 4 vector } m_axi_gmem_x_test_0_ARPROT { O 3 vector } m_axi_gmem_x_test_0_ARQOS { O 4 vector } m_axi_gmem_x_test_0_ARREGION { O 4 vector } m_axi_gmem_x_test_0_ARUSER { O 1 vector } m_axi_gmem_x_test_0_RVALID { I 1 bit } m_axi_gmem_x_test_0_RREADY { O 1 bit } m_axi_gmem_x_test_0_RDATA { I 64 vector } m_axi_gmem_x_test_0_RLAST { I 1 bit } m_axi_gmem_x_test_0_RID { I 1 vector } m_axi_gmem_x_test_0_RFIFONUM { I 9 vector } m_axi_gmem_x_test_0_RUSER { I 1 vector } m_axi_gmem_x_test_0_RRESP { I 2 vector } m_axi_gmem_x_test_0_BVALID { I 1 bit } m_axi_gmem_x_test_0_BREADY { O 1 bit } m_axi_gmem_x_test_0_BRESP { I 2 vector } m_axi_gmem_x_test_0_BID { I 1 vector } m_axi_gmem_x_test_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name p_cast_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast_cast \
    op interface \
    ports { p_cast_cast { I 61 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name gmem_x_train \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_x_train \
    op interface \
    ports { m_axi_gmem_x_train_0_AWVALID { O 1 bit } m_axi_gmem_x_train_0_AWREADY { I 1 bit } m_axi_gmem_x_train_0_AWADDR { O 64 vector } m_axi_gmem_x_train_0_AWID { O 1 vector } m_axi_gmem_x_train_0_AWLEN { O 32 vector } m_axi_gmem_x_train_0_AWSIZE { O 3 vector } m_axi_gmem_x_train_0_AWBURST { O 2 vector } m_axi_gmem_x_train_0_AWLOCK { O 2 vector } m_axi_gmem_x_train_0_AWCACHE { O 4 vector } m_axi_gmem_x_train_0_AWPROT { O 3 vector } m_axi_gmem_x_train_0_AWQOS { O 4 vector } m_axi_gmem_x_train_0_AWREGION { O 4 vector } m_axi_gmem_x_train_0_AWUSER { O 1 vector } m_axi_gmem_x_train_0_WVALID { O 1 bit } m_axi_gmem_x_train_0_WREADY { I 1 bit } m_axi_gmem_x_train_0_WDATA { O 64 vector } m_axi_gmem_x_train_0_WSTRB { O 8 vector } m_axi_gmem_x_train_0_WLAST { O 1 bit } m_axi_gmem_x_train_0_WID { O 1 vector } m_axi_gmem_x_train_0_WUSER { O 1 vector } m_axi_gmem_x_train_0_ARVALID { O 1 bit } m_axi_gmem_x_train_0_ARREADY { I 1 bit } m_axi_gmem_x_train_0_ARADDR { O 64 vector } m_axi_gmem_x_train_0_ARID { O 1 vector } m_axi_gmem_x_train_0_ARLEN { O 32 vector } m_axi_gmem_x_train_0_ARSIZE { O 3 vector } m_axi_gmem_x_train_0_ARBURST { O 2 vector } m_axi_gmem_x_train_0_ARLOCK { O 2 vector } m_axi_gmem_x_train_0_ARCACHE { O 4 vector } m_axi_gmem_x_train_0_ARPROT { O 3 vector } m_axi_gmem_x_train_0_ARQOS { O 4 vector } m_axi_gmem_x_train_0_ARREGION { O 4 vector } m_axi_gmem_x_train_0_ARUSER { O 1 vector } m_axi_gmem_x_train_0_RVALID { I 1 bit } m_axi_gmem_x_train_0_RREADY { O 1 bit } m_axi_gmem_x_train_0_RDATA { I 64 vector } m_axi_gmem_x_train_0_RLAST { I 1 bit } m_axi_gmem_x_train_0_RID { I 1 vector } m_axi_gmem_x_train_0_RFIFONUM { I 9 vector } m_axi_gmem_x_train_0_RUSER { I 1 vector } m_axi_gmem_x_train_0_RRESP { I 2 vector } m_axi_gmem_x_train_0_BVALID { I 1 bit } m_axi_gmem_x_train_0_BREADY { O 1 bit } m_axi_gmem_x_train_0_BRESP { I 2 vector } m_axi_gmem_x_train_0_BID { I 1 vector } m_axi_gmem_x_train_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name sext_ln40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln40 \
    op interface \
    ports { sext_ln40 { I 61 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name gmem_y_train \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_y_train \
    op interface \
    ports { m_axi_gmem_y_train_0_AWVALID { O 1 bit } m_axi_gmem_y_train_0_AWREADY { I 1 bit } m_axi_gmem_y_train_0_AWADDR { O 64 vector } m_axi_gmem_y_train_0_AWID { O 1 vector } m_axi_gmem_y_train_0_AWLEN { O 32 vector } m_axi_gmem_y_train_0_AWSIZE { O 3 vector } m_axi_gmem_y_train_0_AWBURST { O 2 vector } m_axi_gmem_y_train_0_AWLOCK { O 2 vector } m_axi_gmem_y_train_0_AWCACHE { O 4 vector } m_axi_gmem_y_train_0_AWPROT { O 3 vector } m_axi_gmem_y_train_0_AWQOS { O 4 vector } m_axi_gmem_y_train_0_AWREGION { O 4 vector } m_axi_gmem_y_train_0_AWUSER { O 1 vector } m_axi_gmem_y_train_0_WVALID { O 1 bit } m_axi_gmem_y_train_0_WREADY { I 1 bit } m_axi_gmem_y_train_0_WDATA { O 32 vector } m_axi_gmem_y_train_0_WSTRB { O 4 vector } m_axi_gmem_y_train_0_WLAST { O 1 bit } m_axi_gmem_y_train_0_WID { O 1 vector } m_axi_gmem_y_train_0_WUSER { O 1 vector } m_axi_gmem_y_train_0_ARVALID { O 1 bit } m_axi_gmem_y_train_0_ARREADY { I 1 bit } m_axi_gmem_y_train_0_ARADDR { O 64 vector } m_axi_gmem_y_train_0_ARID { O 1 vector } m_axi_gmem_y_train_0_ARLEN { O 32 vector } m_axi_gmem_y_train_0_ARSIZE { O 3 vector } m_axi_gmem_y_train_0_ARBURST { O 2 vector } m_axi_gmem_y_train_0_ARLOCK { O 2 vector } m_axi_gmem_y_train_0_ARCACHE { O 4 vector } m_axi_gmem_y_train_0_ARPROT { O 3 vector } m_axi_gmem_y_train_0_ARQOS { O 4 vector } m_axi_gmem_y_train_0_ARREGION { O 4 vector } m_axi_gmem_y_train_0_ARUSER { O 1 vector } m_axi_gmem_y_train_0_RVALID { I 1 bit } m_axi_gmem_y_train_0_RREADY { O 1 bit } m_axi_gmem_y_train_0_RDATA { I 32 vector } m_axi_gmem_y_train_0_RLAST { I 1 bit } m_axi_gmem_y_train_0_RID { I 1 vector } m_axi_gmem_y_train_0_RFIFONUM { I 9 vector } m_axi_gmem_y_train_0_RUSER { I 1 vector } m_axi_gmem_y_train_0_RRESP { I 2 vector } m_axi_gmem_y_train_0_BVALID { I 1 bit } m_axi_gmem_y_train_0_BREADY { O 1 bit } m_axi_gmem_y_train_0_BRESP { I 2 vector } m_axi_gmem_y_train_0_BID { I 1 vector } m_axi_gmem_y_train_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name sext_ln40_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln40_1 \
    op interface \
    ports { sext_ln40_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName knn_accelerator_flow_control_loop_pipe_sequential_init_U
set CompName knn_accelerator_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix knn_accelerator_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


