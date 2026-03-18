# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler knn_accelerator_knn_distance_and_sort_distances_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler knn_accelerator_knn_distance_and_sort_labels_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
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
    id 33 \
    name test_point \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_test_point \
    op interface \
    ports { test_point { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
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
    id 35 \
    name X_train \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_X_train \
    op interface \
    ports { X_train { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
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
    id 37 \
    name y_train \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_train \
    op interface \
    ports { y_train { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name top_k_labels_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_top_k_labels_0 \
    op interface \
    ports { top_k_labels_0 { O 4 vector } top_k_labels_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name top_k_labels_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_top_k_labels_1 \
    op interface \
    ports { top_k_labels_1 { O 4 vector } top_k_labels_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name top_k_labels_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_top_k_labels_2 \
    op interface \
    ports { top_k_labels_2 { O 4 vector } top_k_labels_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_idx \
    op interface \
    ports { idx { I 9 vector } } \
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


