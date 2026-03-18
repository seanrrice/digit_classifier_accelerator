//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
//Tool Version Limit: 2025.05
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SV_MODULE_TOP_SV
`define SV_MODULE_TOP_SV


`timescale 1ns/1ps


`include "uvm_macros.svh"
import uvm_pkg::*;
import file_agent_pkg::*;
import knn_accelerator_subsystem_pkg::*;
`include "knn_accelerator_subsys_test_sequence_lib.sv"
`include "knn_accelerator_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_knn_accelerator_top.AESL_clock), .reset(apatb_knn_accelerator_top.AESL_reset) );
    assign misc_if.dut2tb_ap_ready = apatb_knn_accelerator_top.AESL_inst_knn_accelerator.ap_ready;
    assign misc_if.dut2tb_ap_done_kernel = apatb_knn_accelerator_top.AESL_inst_knn_accelerator.ap_done;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    axi_if #(64,8,8,3,1)  axi_gmem_x_test_if (.clk  (apatb_knn_accelerator_top.AESL_clock), .rst(apatb_knn_accelerator_top.AESL_reset));
    assign axi_gmem_x_test_if.AWVALID = apatb_knn_accelerator_top.gmem_x_test_AWVALID;
    assign apatb_knn_accelerator_top.gmem_x_test_AWREADY = axi_gmem_x_test_if.AWREADY;
    assign axi_gmem_x_test_if.AWADDR = apatb_knn_accelerator_top.gmem_x_test_AWADDR;
    assign axi_gmem_x_test_if.AWID = apatb_knn_accelerator_top.gmem_x_test_AWID;
    assign axi_gmem_x_test_if.AWLEN = apatb_knn_accelerator_top.gmem_x_test_AWLEN;
    assign axi_gmem_x_test_if.AWSIZE = apatb_knn_accelerator_top.gmem_x_test_AWSIZE;
    assign axi_gmem_x_test_if.AWBURST = apatb_knn_accelerator_top.gmem_x_test_AWBURST;
    assign axi_gmem_x_test_if.AWLOCK = apatb_knn_accelerator_top.gmem_x_test_AWLOCK;
    assign axi_gmem_x_test_if.AWCACHE = apatb_knn_accelerator_top.gmem_x_test_AWCACHE;
    assign axi_gmem_x_test_if.AWPROT = apatb_knn_accelerator_top.gmem_x_test_AWPROT;
    assign axi_gmem_x_test_if.AWQOS = apatb_knn_accelerator_top.gmem_x_test_AWQOS;
    assign axi_gmem_x_test_if.AWREGION = apatb_knn_accelerator_top.gmem_x_test_AWREGION;
    assign axi_gmem_x_test_if.AWUSER = apatb_knn_accelerator_top.gmem_x_test_AWUSER;
    assign axi_gmem_x_test_if.WVALID = apatb_knn_accelerator_top.gmem_x_test_WVALID;
    assign apatb_knn_accelerator_top.gmem_x_test_WREADY = axi_gmem_x_test_if.WREADY;
    assign axi_gmem_x_test_if.WDATA = apatb_knn_accelerator_top.gmem_x_test_WDATA;
    assign axi_gmem_x_test_if.WSTRB = apatb_knn_accelerator_top.gmem_x_test_WSTRB;
    assign axi_gmem_x_test_if.WLAST = apatb_knn_accelerator_top.gmem_x_test_WLAST;
    assign axi_gmem_x_test_if.WID = apatb_knn_accelerator_top.gmem_x_test_WID;
    assign axi_gmem_x_test_if.WUSER = apatb_knn_accelerator_top.gmem_x_test_WUSER;
    assign axi_gmem_x_test_if.ARVALID = apatb_knn_accelerator_top.gmem_x_test_ARVALID;
    assign apatb_knn_accelerator_top.gmem_x_test_ARREADY = axi_gmem_x_test_if.ARREADY;
    assign axi_gmem_x_test_if.ARADDR = apatb_knn_accelerator_top.gmem_x_test_ARADDR;
    assign axi_gmem_x_test_if.ARID = apatb_knn_accelerator_top.gmem_x_test_ARID;
    assign axi_gmem_x_test_if.ARLEN = apatb_knn_accelerator_top.gmem_x_test_ARLEN;
    assign axi_gmem_x_test_if.ARSIZE = apatb_knn_accelerator_top.gmem_x_test_ARSIZE;
    assign axi_gmem_x_test_if.ARBURST = apatb_knn_accelerator_top.gmem_x_test_ARBURST;
    assign axi_gmem_x_test_if.ARLOCK = apatb_knn_accelerator_top.gmem_x_test_ARLOCK;
    assign axi_gmem_x_test_if.ARCACHE = apatb_knn_accelerator_top.gmem_x_test_ARCACHE;
    assign axi_gmem_x_test_if.ARPROT = apatb_knn_accelerator_top.gmem_x_test_ARPROT;
    assign axi_gmem_x_test_if.ARQOS = apatb_knn_accelerator_top.gmem_x_test_ARQOS;
    assign axi_gmem_x_test_if.ARREGION = apatb_knn_accelerator_top.gmem_x_test_ARREGION;
    assign axi_gmem_x_test_if.ARUSER = apatb_knn_accelerator_top.gmem_x_test_ARUSER;
    assign apatb_knn_accelerator_top.gmem_x_test_RVALID = axi_gmem_x_test_if.RVALID;
    assign axi_gmem_x_test_if.RREADY = apatb_knn_accelerator_top.gmem_x_test_RREADY;
    assign apatb_knn_accelerator_top.gmem_x_test_RDATA = axi_gmem_x_test_if.RDATA;
    assign apatb_knn_accelerator_top.gmem_x_test_RLAST = axi_gmem_x_test_if.RLAST;
    assign apatb_knn_accelerator_top.gmem_x_test_RID = axi_gmem_x_test_if.RID;
    assign apatb_knn_accelerator_top.gmem_x_test_RUSER = axi_gmem_x_test_if.RUSER;
    assign apatb_knn_accelerator_top.gmem_x_test_RRESP = axi_gmem_x_test_if.RRESP;
    assign apatb_knn_accelerator_top.gmem_x_test_BVALID = axi_gmem_x_test_if.BVALID;
    assign axi_gmem_x_test_if.BREADY = apatb_knn_accelerator_top.gmem_x_test_BREADY;
    assign apatb_knn_accelerator_top.gmem_x_test_BRESP = axi_gmem_x_test_if.BRESP;
    assign apatb_knn_accelerator_top.gmem_x_test_BID = axi_gmem_x_test_if.BID;
    assign apatb_knn_accelerator_top.gmem_x_test_BUSER = axi_gmem_x_test_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,8,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_gmem_x_test.*", "vif", axi_gmem_x_test_if);
    end


    axi_if #(64,8,8,3,1)  axi_gmem_x_train_if (.clk  (apatb_knn_accelerator_top.AESL_clock), .rst(apatb_knn_accelerator_top.AESL_reset));
    assign axi_gmem_x_train_if.AWVALID = apatb_knn_accelerator_top.gmem_x_train_AWVALID;
    assign apatb_knn_accelerator_top.gmem_x_train_AWREADY = axi_gmem_x_train_if.AWREADY;
    assign axi_gmem_x_train_if.AWADDR = apatb_knn_accelerator_top.gmem_x_train_AWADDR;
    assign axi_gmem_x_train_if.AWID = apatb_knn_accelerator_top.gmem_x_train_AWID;
    assign axi_gmem_x_train_if.AWLEN = apatb_knn_accelerator_top.gmem_x_train_AWLEN;
    assign axi_gmem_x_train_if.AWSIZE = apatb_knn_accelerator_top.gmem_x_train_AWSIZE;
    assign axi_gmem_x_train_if.AWBURST = apatb_knn_accelerator_top.gmem_x_train_AWBURST;
    assign axi_gmem_x_train_if.AWLOCK = apatb_knn_accelerator_top.gmem_x_train_AWLOCK;
    assign axi_gmem_x_train_if.AWCACHE = apatb_knn_accelerator_top.gmem_x_train_AWCACHE;
    assign axi_gmem_x_train_if.AWPROT = apatb_knn_accelerator_top.gmem_x_train_AWPROT;
    assign axi_gmem_x_train_if.AWQOS = apatb_knn_accelerator_top.gmem_x_train_AWQOS;
    assign axi_gmem_x_train_if.AWREGION = apatb_knn_accelerator_top.gmem_x_train_AWREGION;
    assign axi_gmem_x_train_if.AWUSER = apatb_knn_accelerator_top.gmem_x_train_AWUSER;
    assign axi_gmem_x_train_if.WVALID = apatb_knn_accelerator_top.gmem_x_train_WVALID;
    assign apatb_knn_accelerator_top.gmem_x_train_WREADY = axi_gmem_x_train_if.WREADY;
    assign axi_gmem_x_train_if.WDATA = apatb_knn_accelerator_top.gmem_x_train_WDATA;
    assign axi_gmem_x_train_if.WSTRB = apatb_knn_accelerator_top.gmem_x_train_WSTRB;
    assign axi_gmem_x_train_if.WLAST = apatb_knn_accelerator_top.gmem_x_train_WLAST;
    assign axi_gmem_x_train_if.WID = apatb_knn_accelerator_top.gmem_x_train_WID;
    assign axi_gmem_x_train_if.WUSER = apatb_knn_accelerator_top.gmem_x_train_WUSER;
    assign axi_gmem_x_train_if.ARVALID = apatb_knn_accelerator_top.gmem_x_train_ARVALID;
    assign apatb_knn_accelerator_top.gmem_x_train_ARREADY = axi_gmem_x_train_if.ARREADY;
    assign axi_gmem_x_train_if.ARADDR = apatb_knn_accelerator_top.gmem_x_train_ARADDR;
    assign axi_gmem_x_train_if.ARID = apatb_knn_accelerator_top.gmem_x_train_ARID;
    assign axi_gmem_x_train_if.ARLEN = apatb_knn_accelerator_top.gmem_x_train_ARLEN;
    assign axi_gmem_x_train_if.ARSIZE = apatb_knn_accelerator_top.gmem_x_train_ARSIZE;
    assign axi_gmem_x_train_if.ARBURST = apatb_knn_accelerator_top.gmem_x_train_ARBURST;
    assign axi_gmem_x_train_if.ARLOCK = apatb_knn_accelerator_top.gmem_x_train_ARLOCK;
    assign axi_gmem_x_train_if.ARCACHE = apatb_knn_accelerator_top.gmem_x_train_ARCACHE;
    assign axi_gmem_x_train_if.ARPROT = apatb_knn_accelerator_top.gmem_x_train_ARPROT;
    assign axi_gmem_x_train_if.ARQOS = apatb_knn_accelerator_top.gmem_x_train_ARQOS;
    assign axi_gmem_x_train_if.ARREGION = apatb_knn_accelerator_top.gmem_x_train_ARREGION;
    assign axi_gmem_x_train_if.ARUSER = apatb_knn_accelerator_top.gmem_x_train_ARUSER;
    assign apatb_knn_accelerator_top.gmem_x_train_RVALID = axi_gmem_x_train_if.RVALID;
    assign axi_gmem_x_train_if.RREADY = apatb_knn_accelerator_top.gmem_x_train_RREADY;
    assign apatb_knn_accelerator_top.gmem_x_train_RDATA = axi_gmem_x_train_if.RDATA;
    assign apatb_knn_accelerator_top.gmem_x_train_RLAST = axi_gmem_x_train_if.RLAST;
    assign apatb_knn_accelerator_top.gmem_x_train_RID = axi_gmem_x_train_if.RID;
    assign apatb_knn_accelerator_top.gmem_x_train_RUSER = axi_gmem_x_train_if.RUSER;
    assign apatb_knn_accelerator_top.gmem_x_train_RRESP = axi_gmem_x_train_if.RRESP;
    assign apatb_knn_accelerator_top.gmem_x_train_BVALID = axi_gmem_x_train_if.BVALID;
    assign axi_gmem_x_train_if.BREADY = apatb_knn_accelerator_top.gmem_x_train_BREADY;
    assign apatb_knn_accelerator_top.gmem_x_train_BRESP = axi_gmem_x_train_if.BRESP;
    assign apatb_knn_accelerator_top.gmem_x_train_BID = axi_gmem_x_train_if.BID;
    assign apatb_knn_accelerator_top.gmem_x_train_BUSER = axi_gmem_x_train_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,8,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_gmem_x_train.*", "vif", axi_gmem_x_train_if);
    end


    axi_if #(64,4,8,3,1)  axi_gmem_y_train_if (.clk  (apatb_knn_accelerator_top.AESL_clock), .rst(apatb_knn_accelerator_top.AESL_reset));
    assign axi_gmem_y_train_if.AWVALID = apatb_knn_accelerator_top.gmem_y_train_AWVALID;
    assign apatb_knn_accelerator_top.gmem_y_train_AWREADY = axi_gmem_y_train_if.AWREADY;
    assign axi_gmem_y_train_if.AWADDR = apatb_knn_accelerator_top.gmem_y_train_AWADDR;
    assign axi_gmem_y_train_if.AWID = apatb_knn_accelerator_top.gmem_y_train_AWID;
    assign axi_gmem_y_train_if.AWLEN = apatb_knn_accelerator_top.gmem_y_train_AWLEN;
    assign axi_gmem_y_train_if.AWSIZE = apatb_knn_accelerator_top.gmem_y_train_AWSIZE;
    assign axi_gmem_y_train_if.AWBURST = apatb_knn_accelerator_top.gmem_y_train_AWBURST;
    assign axi_gmem_y_train_if.AWLOCK = apatb_knn_accelerator_top.gmem_y_train_AWLOCK;
    assign axi_gmem_y_train_if.AWCACHE = apatb_knn_accelerator_top.gmem_y_train_AWCACHE;
    assign axi_gmem_y_train_if.AWPROT = apatb_knn_accelerator_top.gmem_y_train_AWPROT;
    assign axi_gmem_y_train_if.AWQOS = apatb_knn_accelerator_top.gmem_y_train_AWQOS;
    assign axi_gmem_y_train_if.AWREGION = apatb_knn_accelerator_top.gmem_y_train_AWREGION;
    assign axi_gmem_y_train_if.AWUSER = apatb_knn_accelerator_top.gmem_y_train_AWUSER;
    assign axi_gmem_y_train_if.WVALID = apatb_knn_accelerator_top.gmem_y_train_WVALID;
    assign apatb_knn_accelerator_top.gmem_y_train_WREADY = axi_gmem_y_train_if.WREADY;
    assign axi_gmem_y_train_if.WDATA = apatb_knn_accelerator_top.gmem_y_train_WDATA;
    assign axi_gmem_y_train_if.WSTRB = apatb_knn_accelerator_top.gmem_y_train_WSTRB;
    assign axi_gmem_y_train_if.WLAST = apatb_knn_accelerator_top.gmem_y_train_WLAST;
    assign axi_gmem_y_train_if.WID = apatb_knn_accelerator_top.gmem_y_train_WID;
    assign axi_gmem_y_train_if.WUSER = apatb_knn_accelerator_top.gmem_y_train_WUSER;
    assign axi_gmem_y_train_if.ARVALID = apatb_knn_accelerator_top.gmem_y_train_ARVALID;
    assign apatb_knn_accelerator_top.gmem_y_train_ARREADY = axi_gmem_y_train_if.ARREADY;
    assign axi_gmem_y_train_if.ARADDR = apatb_knn_accelerator_top.gmem_y_train_ARADDR;
    assign axi_gmem_y_train_if.ARID = apatb_knn_accelerator_top.gmem_y_train_ARID;
    assign axi_gmem_y_train_if.ARLEN = apatb_knn_accelerator_top.gmem_y_train_ARLEN;
    assign axi_gmem_y_train_if.ARSIZE = apatb_knn_accelerator_top.gmem_y_train_ARSIZE;
    assign axi_gmem_y_train_if.ARBURST = apatb_knn_accelerator_top.gmem_y_train_ARBURST;
    assign axi_gmem_y_train_if.ARLOCK = apatb_knn_accelerator_top.gmem_y_train_ARLOCK;
    assign axi_gmem_y_train_if.ARCACHE = apatb_knn_accelerator_top.gmem_y_train_ARCACHE;
    assign axi_gmem_y_train_if.ARPROT = apatb_knn_accelerator_top.gmem_y_train_ARPROT;
    assign axi_gmem_y_train_if.ARQOS = apatb_knn_accelerator_top.gmem_y_train_ARQOS;
    assign axi_gmem_y_train_if.ARREGION = apatb_knn_accelerator_top.gmem_y_train_ARREGION;
    assign axi_gmem_y_train_if.ARUSER = apatb_knn_accelerator_top.gmem_y_train_ARUSER;
    assign apatb_knn_accelerator_top.gmem_y_train_RVALID = axi_gmem_y_train_if.RVALID;
    assign axi_gmem_y_train_if.RREADY = apatb_knn_accelerator_top.gmem_y_train_RREADY;
    assign apatb_knn_accelerator_top.gmem_y_train_RDATA = axi_gmem_y_train_if.RDATA;
    assign apatb_knn_accelerator_top.gmem_y_train_RLAST = axi_gmem_y_train_if.RLAST;
    assign apatb_knn_accelerator_top.gmem_y_train_RID = axi_gmem_y_train_if.RID;
    assign apatb_knn_accelerator_top.gmem_y_train_RUSER = axi_gmem_y_train_if.RUSER;
    assign apatb_knn_accelerator_top.gmem_y_train_RRESP = axi_gmem_y_train_if.RRESP;
    assign apatb_knn_accelerator_top.gmem_y_train_BVALID = axi_gmem_y_train_if.BVALID;
    assign axi_gmem_y_train_if.BREADY = apatb_knn_accelerator_top.gmem_y_train_BREADY;
    assign apatb_knn_accelerator_top.gmem_y_train_BRESP = axi_gmem_y_train_if.BRESP;
    assign apatb_knn_accelerator_top.gmem_y_train_BID = axi_gmem_y_train_if.BID;
    assign apatb_knn_accelerator_top.gmem_y_train_BUSER = axi_gmem_y_train_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_gmem_y_train.*", "vif", axi_gmem_y_train_if);
    end


    axi_if #(64,4,8,3,1)  axi_gmem_y_test_if (.clk  (apatb_knn_accelerator_top.AESL_clock), .rst(apatb_knn_accelerator_top.AESL_reset));
    assign axi_gmem_y_test_if.AWVALID = apatb_knn_accelerator_top.gmem_y_test_AWVALID;
    assign apatb_knn_accelerator_top.gmem_y_test_AWREADY = axi_gmem_y_test_if.AWREADY;
    assign axi_gmem_y_test_if.AWADDR = apatb_knn_accelerator_top.gmem_y_test_AWADDR;
    assign axi_gmem_y_test_if.AWID = apatb_knn_accelerator_top.gmem_y_test_AWID;
    assign axi_gmem_y_test_if.AWLEN = apatb_knn_accelerator_top.gmem_y_test_AWLEN;
    assign axi_gmem_y_test_if.AWSIZE = apatb_knn_accelerator_top.gmem_y_test_AWSIZE;
    assign axi_gmem_y_test_if.AWBURST = apatb_knn_accelerator_top.gmem_y_test_AWBURST;
    assign axi_gmem_y_test_if.AWLOCK = apatb_knn_accelerator_top.gmem_y_test_AWLOCK;
    assign axi_gmem_y_test_if.AWCACHE = apatb_knn_accelerator_top.gmem_y_test_AWCACHE;
    assign axi_gmem_y_test_if.AWPROT = apatb_knn_accelerator_top.gmem_y_test_AWPROT;
    assign axi_gmem_y_test_if.AWQOS = apatb_knn_accelerator_top.gmem_y_test_AWQOS;
    assign axi_gmem_y_test_if.AWREGION = apatb_knn_accelerator_top.gmem_y_test_AWREGION;
    assign axi_gmem_y_test_if.AWUSER = apatb_knn_accelerator_top.gmem_y_test_AWUSER;
    assign axi_gmem_y_test_if.WVALID = apatb_knn_accelerator_top.gmem_y_test_WVALID;
    assign apatb_knn_accelerator_top.gmem_y_test_WREADY = axi_gmem_y_test_if.WREADY;
    assign axi_gmem_y_test_if.WDATA = apatb_knn_accelerator_top.gmem_y_test_WDATA;
    assign axi_gmem_y_test_if.WSTRB = apatb_knn_accelerator_top.gmem_y_test_WSTRB;
    assign axi_gmem_y_test_if.WLAST = apatb_knn_accelerator_top.gmem_y_test_WLAST;
    assign axi_gmem_y_test_if.WID = apatb_knn_accelerator_top.gmem_y_test_WID;
    assign axi_gmem_y_test_if.WUSER = apatb_knn_accelerator_top.gmem_y_test_WUSER;
    assign axi_gmem_y_test_if.ARVALID = apatb_knn_accelerator_top.gmem_y_test_ARVALID;
    assign apatb_knn_accelerator_top.gmem_y_test_ARREADY = axi_gmem_y_test_if.ARREADY;
    assign axi_gmem_y_test_if.ARADDR = apatb_knn_accelerator_top.gmem_y_test_ARADDR;
    assign axi_gmem_y_test_if.ARID = apatb_knn_accelerator_top.gmem_y_test_ARID;
    assign axi_gmem_y_test_if.ARLEN = apatb_knn_accelerator_top.gmem_y_test_ARLEN;
    assign axi_gmem_y_test_if.ARSIZE = apatb_knn_accelerator_top.gmem_y_test_ARSIZE;
    assign axi_gmem_y_test_if.ARBURST = apatb_knn_accelerator_top.gmem_y_test_ARBURST;
    assign axi_gmem_y_test_if.ARLOCK = apatb_knn_accelerator_top.gmem_y_test_ARLOCK;
    assign axi_gmem_y_test_if.ARCACHE = apatb_knn_accelerator_top.gmem_y_test_ARCACHE;
    assign axi_gmem_y_test_if.ARPROT = apatb_knn_accelerator_top.gmem_y_test_ARPROT;
    assign axi_gmem_y_test_if.ARQOS = apatb_knn_accelerator_top.gmem_y_test_ARQOS;
    assign axi_gmem_y_test_if.ARREGION = apatb_knn_accelerator_top.gmem_y_test_ARREGION;
    assign axi_gmem_y_test_if.ARUSER = apatb_knn_accelerator_top.gmem_y_test_ARUSER;
    assign apatb_knn_accelerator_top.gmem_y_test_RVALID = axi_gmem_y_test_if.RVALID;
    assign axi_gmem_y_test_if.RREADY = apatb_knn_accelerator_top.gmem_y_test_RREADY;
    assign apatb_knn_accelerator_top.gmem_y_test_RDATA = axi_gmem_y_test_if.RDATA;
    assign apatb_knn_accelerator_top.gmem_y_test_RLAST = axi_gmem_y_test_if.RLAST;
    assign apatb_knn_accelerator_top.gmem_y_test_RID = axi_gmem_y_test_if.RID;
    assign apatb_knn_accelerator_top.gmem_y_test_RUSER = axi_gmem_y_test_if.RUSER;
    assign apatb_knn_accelerator_top.gmem_y_test_RRESP = axi_gmem_y_test_if.RRESP;
    assign apatb_knn_accelerator_top.gmem_y_test_BVALID = axi_gmem_y_test_if.BVALID;
    assign axi_gmem_y_test_if.BREADY = apatb_knn_accelerator_top.gmem_y_test_BREADY;
    assign apatb_knn_accelerator_top.gmem_y_test_BRESP = axi_gmem_y_test_if.BRESP;
    assign apatb_knn_accelerator_top.gmem_y_test_BID = axi_gmem_y_test_if.BID;
    assign apatb_knn_accelerator_top.gmem_y_test_BUSER = axi_gmem_y_test_if.BUSER;
    initial begin
        uvm_config_db #( virtual axi_if#(64,4,8,3,1) )::set(null, "uvm_test_top.top_env.axi_master_gmem_y_test.*", "vif", axi_gmem_y_test_if);
    end


    axi_if #(6,4,4,3,1)  axi_control_r_if (.clk  (apatb_knn_accelerator_top.AESL_clock), .rst(apatb_knn_accelerator_top.AESL_reset));
    assign apatb_knn_accelerator_top.control_r_AWADDR = axi_control_r_if.AWADDR;
    assign apatb_knn_accelerator_top.control_r_AWVALID = axi_control_r_if.AWVALID;
    assign axi_control_r_if.AWREADY = apatb_knn_accelerator_top.control_r_AWREADY;
    assign apatb_knn_accelerator_top.control_r_WVALID = axi_control_r_if.WVALID;
    assign axi_control_r_if.WREADY = apatb_knn_accelerator_top.control_r_WREADY;
    assign apatb_knn_accelerator_top.control_r_WDATA = axi_control_r_if.WDATA;
    assign apatb_knn_accelerator_top.control_r_WSTRB = axi_control_r_if.WSTRB;
    assign apatb_knn_accelerator_top.control_r_ARADDR = axi_control_r_if.ARADDR;
    assign apatb_knn_accelerator_top.control_r_ARVALID = axi_control_r_if.ARVALID;
    assign axi_control_r_if.ARREADY = apatb_knn_accelerator_top.control_r_ARREADY;
    assign axi_control_r_if.RVALID = apatb_knn_accelerator_top.control_r_RVALID;
    assign apatb_knn_accelerator_top.control_r_RREADY = axi_control_r_if.RREADY;
    assign axi_control_r_if.RDATA = apatb_knn_accelerator_top.control_r_RDATA;
    assign axi_control_r_if.RRESP = apatb_knn_accelerator_top.control_r_RRESP;
    assign axi_control_r_if.BVALID = apatb_knn_accelerator_top.control_r_BVALID;
    assign apatb_knn_accelerator_top.control_r_BREADY = axi_control_r_if.BREADY;
    assign axi_control_r_if.BRESP = apatb_knn_accelerator_top.control_r_BRESP;
    assign axi_control_r_if.BID = 0;
    assign axi_control_r_if.RID = 0;
    assign axi_control_r_if.RLAST = 1;
    initial begin
        uvm_config_db #( virtual axi_if#(6,4,4,3,1) )::set(null, "uvm_test_top.top_env.axi_lite_control_r.*", "vif", axi_control_r_if);
    end


    axi_if #(4,4,4,3,1)  axi_control_if (.clk  (apatb_knn_accelerator_top.AESL_clock), .rst(apatb_knn_accelerator_top.AESL_reset));
    assign apatb_knn_accelerator_top.control_AWADDR = axi_control_if.AWADDR;
    assign apatb_knn_accelerator_top.control_AWVALID = axi_control_if.AWVALID;
    assign axi_control_if.AWREADY = apatb_knn_accelerator_top.control_AWREADY;
    assign apatb_knn_accelerator_top.control_WVALID = axi_control_if.WVALID;
    assign axi_control_if.WREADY = apatb_knn_accelerator_top.control_WREADY;
    assign apatb_knn_accelerator_top.control_WDATA = axi_control_if.WDATA;
    assign apatb_knn_accelerator_top.control_WSTRB = axi_control_if.WSTRB;
    assign apatb_knn_accelerator_top.control_ARADDR = axi_control_if.ARADDR;
    assign apatb_knn_accelerator_top.control_ARVALID = axi_control_if.ARVALID;
    assign axi_control_if.ARREADY = apatb_knn_accelerator_top.control_ARREADY;
    assign axi_control_if.RVALID = apatb_knn_accelerator_top.control_RVALID;
    assign apatb_knn_accelerator_top.control_RREADY = axi_control_if.RREADY;
    assign axi_control_if.RDATA = apatb_knn_accelerator_top.control_RDATA;
    assign axi_control_if.RRESP = apatb_knn_accelerator_top.control_RRESP;
    assign axi_control_if.BVALID = apatb_knn_accelerator_top.control_BVALID;
    assign apatb_knn_accelerator_top.control_BREADY = axi_control_if.BREADY;
    assign axi_control_if.BRESP = apatb_knn_accelerator_top.control_BRESP;
    assign axi_control_if.BID = 0;
    assign axi_control_if.RID = 0;
    assign axi_control_if.RLAST = 1;
    initial begin
        uvm_config_db #( virtual axi_if#(4,4,4,3,1) )::set(null, "uvm_test_top.top_env.axi_lite_control.*", "vif", axi_control_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
