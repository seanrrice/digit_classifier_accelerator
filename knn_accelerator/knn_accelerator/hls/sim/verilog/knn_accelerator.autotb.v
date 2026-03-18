// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.1 (64-bit)
// Tool Version Limit: 2025.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps


`define AUTOTB_DUT      knn_accelerator
`define AUTOTB_DUT_INST AESL_inst_knn_accelerator
`define AUTOTB_TOP      apatb_knn_accelerator_top
`define AUTOTB_LAT_RESULT_FILE "knn_accelerator.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "knn_accelerator.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_knn_accelerator_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_gmem_x_test 1
`define AESL_DEPTH_gmem_x_train 1
`define AESL_DEPTH_gmem_y_train 1
`define AESL_DEPTH_gmem_y_test 1
`define AESL_DEPTH_X_test 1
`define AESL_DEPTH_X_train 1
`define AESL_DEPTH_y_train 1
`define AESL_DEPTH_y_test 1
`define AUTOTB_TVIN_gmem_x_test  "../tv/cdatafile/c.knn_accelerator.autotvin_gmem_x_test.dat"
`define AUTOTB_TVIN_gmem_x_train  "../tv/cdatafile/c.knn_accelerator.autotvin_gmem_x_train.dat"
`define AUTOTB_TVIN_gmem_y_train  "../tv/cdatafile/c.knn_accelerator.autotvin_gmem_y_train.dat"
`define AUTOTB_TVIN_X_test  "../tv/cdatafile/c.knn_accelerator.autotvin_X_test.dat"
`define AUTOTB_TVIN_X_train  "../tv/cdatafile/c.knn_accelerator.autotvin_X_train.dat"
`define AUTOTB_TVIN_y_train  "../tv/cdatafile/c.knn_accelerator.autotvin_y_train.dat"
`define AUTOTB_TVIN_y_test  "../tv/cdatafile/c.knn_accelerator.autotvin_y_test.dat"
`define AUTOTB_TVIN_gmem_x_test_out_wrapc  "../tv/rtldatafile/rtl.knn_accelerator.autotvin_gmem_x_test.dat"
`define AUTOTB_TVIN_gmem_x_train_out_wrapc  "../tv/rtldatafile/rtl.knn_accelerator.autotvin_gmem_x_train.dat"
`define AUTOTB_TVIN_gmem_y_train_out_wrapc  "../tv/rtldatafile/rtl.knn_accelerator.autotvin_gmem_y_train.dat"
`define AUTOTB_TVIN_X_test_out_wrapc  "../tv/rtldatafile/rtl.knn_accelerator.autotvin_X_test.dat"
`define AUTOTB_TVIN_X_train_out_wrapc  "../tv/rtldatafile/rtl.knn_accelerator.autotvin_X_train.dat"
`define AUTOTB_TVIN_y_train_out_wrapc  "../tv/rtldatafile/rtl.knn_accelerator.autotvin_y_train.dat"
`define AUTOTB_TVIN_y_test_out_wrapc  "../tv/rtldatafile/rtl.knn_accelerator.autotvin_y_test.dat"
`define AUTOTB_TVOUT_gmem_y_test  "../tv/cdatafile/c.knn_accelerator.autotvout_gmem_y_test.dat"
`define AUTOTB_TVOUT_gmem_y_test_out_wrapc  "../tv/rtldatafile/rtl.knn_accelerator.autotvout_gmem_y_test.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 13837;
parameter LENGTH_X_test = 1;
parameter LENGTH_X_train = 1;
parameter LENGTH_gmem_x_test = 490;
parameter LENGTH_gmem_x_train = 490;
parameter LENGTH_gmem_y_test = 10;
parameter LENGTH_gmem_y_train = 10;
parameter LENGTH_y_test = 1;
parameter LENGTH_y_train = 1;

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [3 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [3 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  control_INTERRUPT;
wire [5 : 0] control_r_AWADDR;
wire  control_r_AWVALID;
wire  control_r_AWREADY;
wire  control_r_WVALID;
wire  control_r_WREADY;
wire [31 : 0] control_r_WDATA;
wire [3 : 0] control_r_WSTRB;
wire [5 : 0] control_r_ARADDR;
wire  control_r_ARVALID;
wire  control_r_ARREADY;
wire  control_r_RVALID;
wire  control_r_RREADY;
wire [31 : 0] control_r_RDATA;
wire [1 : 0] control_r_RRESP;
wire  control_r_BVALID;
wire  control_r_BREADY;
wire [1 : 0] control_r_BRESP;
wire  gmem_x_test_AWVALID;
wire  gmem_x_test_AWREADY;
wire [63 : 0] gmem_x_test_AWADDR;
wire [0 : 0] gmem_x_test_AWID;
wire [7 : 0] gmem_x_test_AWLEN;
wire [2 : 0] gmem_x_test_AWSIZE;
wire [1 : 0] gmem_x_test_AWBURST;
wire [1 : 0] gmem_x_test_AWLOCK;
wire [3 : 0] gmem_x_test_AWCACHE;
wire [2 : 0] gmem_x_test_AWPROT;
wire [3 : 0] gmem_x_test_AWQOS;
wire [3 : 0] gmem_x_test_AWREGION;
wire [0 : 0] gmem_x_test_AWUSER;
wire  gmem_x_test_WVALID;
wire  gmem_x_test_WREADY;
wire [63 : 0] gmem_x_test_WDATA;
wire [7 : 0] gmem_x_test_WSTRB;
wire  gmem_x_test_WLAST;
wire [0 : 0] gmem_x_test_WID;
wire [0 : 0] gmem_x_test_WUSER;
wire  gmem_x_test_ARVALID;
wire  gmem_x_test_ARREADY;
wire [63 : 0] gmem_x_test_ARADDR;
wire [0 : 0] gmem_x_test_ARID;
wire [7 : 0] gmem_x_test_ARLEN;
wire [2 : 0] gmem_x_test_ARSIZE;
wire [1 : 0] gmem_x_test_ARBURST;
wire [1 : 0] gmem_x_test_ARLOCK;
wire [3 : 0] gmem_x_test_ARCACHE;
wire [2 : 0] gmem_x_test_ARPROT;
wire [3 : 0] gmem_x_test_ARQOS;
wire [3 : 0] gmem_x_test_ARREGION;
wire [0 : 0] gmem_x_test_ARUSER;
wire  gmem_x_test_RVALID;
wire  gmem_x_test_RREADY;
wire [63 : 0] gmem_x_test_RDATA;
wire  gmem_x_test_RLAST;
wire [0 : 0] gmem_x_test_RID;
wire [0 : 0] gmem_x_test_RUSER;
wire [1 : 0] gmem_x_test_RRESP;
wire  gmem_x_test_BVALID;
wire  gmem_x_test_BREADY;
wire [1 : 0] gmem_x_test_BRESP;
wire [0 : 0] gmem_x_test_BID;
wire [0 : 0] gmem_x_test_BUSER;
wire  gmem_x_train_AWVALID;
wire  gmem_x_train_AWREADY;
wire [63 : 0] gmem_x_train_AWADDR;
wire [0 : 0] gmem_x_train_AWID;
wire [7 : 0] gmem_x_train_AWLEN;
wire [2 : 0] gmem_x_train_AWSIZE;
wire [1 : 0] gmem_x_train_AWBURST;
wire [1 : 0] gmem_x_train_AWLOCK;
wire [3 : 0] gmem_x_train_AWCACHE;
wire [2 : 0] gmem_x_train_AWPROT;
wire [3 : 0] gmem_x_train_AWQOS;
wire [3 : 0] gmem_x_train_AWREGION;
wire [0 : 0] gmem_x_train_AWUSER;
wire  gmem_x_train_WVALID;
wire  gmem_x_train_WREADY;
wire [63 : 0] gmem_x_train_WDATA;
wire [7 : 0] gmem_x_train_WSTRB;
wire  gmem_x_train_WLAST;
wire [0 : 0] gmem_x_train_WID;
wire [0 : 0] gmem_x_train_WUSER;
wire  gmem_x_train_ARVALID;
wire  gmem_x_train_ARREADY;
wire [63 : 0] gmem_x_train_ARADDR;
wire [0 : 0] gmem_x_train_ARID;
wire [7 : 0] gmem_x_train_ARLEN;
wire [2 : 0] gmem_x_train_ARSIZE;
wire [1 : 0] gmem_x_train_ARBURST;
wire [1 : 0] gmem_x_train_ARLOCK;
wire [3 : 0] gmem_x_train_ARCACHE;
wire [2 : 0] gmem_x_train_ARPROT;
wire [3 : 0] gmem_x_train_ARQOS;
wire [3 : 0] gmem_x_train_ARREGION;
wire [0 : 0] gmem_x_train_ARUSER;
wire  gmem_x_train_RVALID;
wire  gmem_x_train_RREADY;
wire [63 : 0] gmem_x_train_RDATA;
wire  gmem_x_train_RLAST;
wire [0 : 0] gmem_x_train_RID;
wire [0 : 0] gmem_x_train_RUSER;
wire [1 : 0] gmem_x_train_RRESP;
wire  gmem_x_train_BVALID;
wire  gmem_x_train_BREADY;
wire [1 : 0] gmem_x_train_BRESP;
wire [0 : 0] gmem_x_train_BID;
wire [0 : 0] gmem_x_train_BUSER;
wire  gmem_y_train_AWVALID;
wire  gmem_y_train_AWREADY;
wire [63 : 0] gmem_y_train_AWADDR;
wire [0 : 0] gmem_y_train_AWID;
wire [7 : 0] gmem_y_train_AWLEN;
wire [2 : 0] gmem_y_train_AWSIZE;
wire [1 : 0] gmem_y_train_AWBURST;
wire [1 : 0] gmem_y_train_AWLOCK;
wire [3 : 0] gmem_y_train_AWCACHE;
wire [2 : 0] gmem_y_train_AWPROT;
wire [3 : 0] gmem_y_train_AWQOS;
wire [3 : 0] gmem_y_train_AWREGION;
wire [0 : 0] gmem_y_train_AWUSER;
wire  gmem_y_train_WVALID;
wire  gmem_y_train_WREADY;
wire [31 : 0] gmem_y_train_WDATA;
wire [3 : 0] gmem_y_train_WSTRB;
wire  gmem_y_train_WLAST;
wire [0 : 0] gmem_y_train_WID;
wire [0 : 0] gmem_y_train_WUSER;
wire  gmem_y_train_ARVALID;
wire  gmem_y_train_ARREADY;
wire [63 : 0] gmem_y_train_ARADDR;
wire [0 : 0] gmem_y_train_ARID;
wire [7 : 0] gmem_y_train_ARLEN;
wire [2 : 0] gmem_y_train_ARSIZE;
wire [1 : 0] gmem_y_train_ARBURST;
wire [1 : 0] gmem_y_train_ARLOCK;
wire [3 : 0] gmem_y_train_ARCACHE;
wire [2 : 0] gmem_y_train_ARPROT;
wire [3 : 0] gmem_y_train_ARQOS;
wire [3 : 0] gmem_y_train_ARREGION;
wire [0 : 0] gmem_y_train_ARUSER;
wire  gmem_y_train_RVALID;
wire  gmem_y_train_RREADY;
wire [31 : 0] gmem_y_train_RDATA;
wire  gmem_y_train_RLAST;
wire [0 : 0] gmem_y_train_RID;
wire [0 : 0] gmem_y_train_RUSER;
wire [1 : 0] gmem_y_train_RRESP;
wire  gmem_y_train_BVALID;
wire  gmem_y_train_BREADY;
wire [1 : 0] gmem_y_train_BRESP;
wire [0 : 0] gmem_y_train_BID;
wire [0 : 0] gmem_y_train_BUSER;
wire  gmem_y_test_AWVALID;
wire  gmem_y_test_AWREADY;
wire [63 : 0] gmem_y_test_AWADDR;
wire [0 : 0] gmem_y_test_AWID;
wire [7 : 0] gmem_y_test_AWLEN;
wire [2 : 0] gmem_y_test_AWSIZE;
wire [1 : 0] gmem_y_test_AWBURST;
wire [1 : 0] gmem_y_test_AWLOCK;
wire [3 : 0] gmem_y_test_AWCACHE;
wire [2 : 0] gmem_y_test_AWPROT;
wire [3 : 0] gmem_y_test_AWQOS;
wire [3 : 0] gmem_y_test_AWREGION;
wire [0 : 0] gmem_y_test_AWUSER;
wire  gmem_y_test_WVALID;
wire  gmem_y_test_WREADY;
wire [31 : 0] gmem_y_test_WDATA;
wire [3 : 0] gmem_y_test_WSTRB;
wire  gmem_y_test_WLAST;
wire [0 : 0] gmem_y_test_WID;
wire [0 : 0] gmem_y_test_WUSER;
wire  gmem_y_test_ARVALID;
wire  gmem_y_test_ARREADY;
wire [63 : 0] gmem_y_test_ARADDR;
wire [0 : 0] gmem_y_test_ARID;
wire [7 : 0] gmem_y_test_ARLEN;
wire [2 : 0] gmem_y_test_ARSIZE;
wire [1 : 0] gmem_y_test_ARBURST;
wire [1 : 0] gmem_y_test_ARLOCK;
wire [3 : 0] gmem_y_test_ARCACHE;
wire [2 : 0] gmem_y_test_ARPROT;
wire [3 : 0] gmem_y_test_ARQOS;
wire [3 : 0] gmem_y_test_ARREGION;
wire [0 : 0] gmem_y_test_ARUSER;
wire  gmem_y_test_RVALID;
wire  gmem_y_test_RREADY;
wire [31 : 0] gmem_y_test_RDATA;
wire  gmem_y_test_RLAST;
wire [0 : 0] gmem_y_test_RID;
wire [0 : 0] gmem_y_test_RUSER;
wire [1 : 0] gmem_y_test_RRESP;
wire  gmem_y_test_BVALID;
wire  gmem_y_test_BREADY;
wire [1 : 0] gmem_y_test_BRESP;
wire [0 : 0] gmem_y_test_BID;
wire [0 : 0] gmem_y_test_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_r_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire all_finish;
wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .interrupt(control_INTERRUPT),
    .s_axi_control_r_AWADDR(control_r_AWADDR),
    .s_axi_control_r_AWVALID(control_r_AWVALID),
    .s_axi_control_r_AWREADY(control_r_AWREADY),
    .s_axi_control_r_WVALID(control_r_WVALID),
    .s_axi_control_r_WREADY(control_r_WREADY),
    .s_axi_control_r_WDATA(control_r_WDATA),
    .s_axi_control_r_WSTRB(control_r_WSTRB),
    .s_axi_control_r_ARADDR(control_r_ARADDR),
    .s_axi_control_r_ARVALID(control_r_ARVALID),
    .s_axi_control_r_ARREADY(control_r_ARREADY),
    .s_axi_control_r_RVALID(control_r_RVALID),
    .s_axi_control_r_RREADY(control_r_RREADY),
    .s_axi_control_r_RDATA(control_r_RDATA),
    .s_axi_control_r_RRESP(control_r_RRESP),
    .s_axi_control_r_BVALID(control_r_BVALID),
    .s_axi_control_r_BREADY(control_r_BREADY),
    .s_axi_control_r_BRESP(control_r_BRESP),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_gmem_x_test_AWVALID(gmem_x_test_AWVALID),
    .m_axi_gmem_x_test_AWREADY(gmem_x_test_AWREADY),
    .m_axi_gmem_x_test_AWADDR(gmem_x_test_AWADDR),
    .m_axi_gmem_x_test_AWID(gmem_x_test_AWID),
    .m_axi_gmem_x_test_AWLEN(gmem_x_test_AWLEN),
    .m_axi_gmem_x_test_AWSIZE(gmem_x_test_AWSIZE),
    .m_axi_gmem_x_test_AWBURST(gmem_x_test_AWBURST),
    .m_axi_gmem_x_test_AWLOCK(gmem_x_test_AWLOCK),
    .m_axi_gmem_x_test_AWCACHE(gmem_x_test_AWCACHE),
    .m_axi_gmem_x_test_AWPROT(gmem_x_test_AWPROT),
    .m_axi_gmem_x_test_AWQOS(gmem_x_test_AWQOS),
    .m_axi_gmem_x_test_AWREGION(gmem_x_test_AWREGION),
    .m_axi_gmem_x_test_AWUSER(gmem_x_test_AWUSER),
    .m_axi_gmem_x_test_WVALID(gmem_x_test_WVALID),
    .m_axi_gmem_x_test_WREADY(gmem_x_test_WREADY),
    .m_axi_gmem_x_test_WDATA(gmem_x_test_WDATA),
    .m_axi_gmem_x_test_WSTRB(gmem_x_test_WSTRB),
    .m_axi_gmem_x_test_WLAST(gmem_x_test_WLAST),
    .m_axi_gmem_x_test_WID(gmem_x_test_WID),
    .m_axi_gmem_x_test_WUSER(gmem_x_test_WUSER),
    .m_axi_gmem_x_test_ARVALID(gmem_x_test_ARVALID),
    .m_axi_gmem_x_test_ARREADY(gmem_x_test_ARREADY),
    .m_axi_gmem_x_test_ARADDR(gmem_x_test_ARADDR),
    .m_axi_gmem_x_test_ARID(gmem_x_test_ARID),
    .m_axi_gmem_x_test_ARLEN(gmem_x_test_ARLEN),
    .m_axi_gmem_x_test_ARSIZE(gmem_x_test_ARSIZE),
    .m_axi_gmem_x_test_ARBURST(gmem_x_test_ARBURST),
    .m_axi_gmem_x_test_ARLOCK(gmem_x_test_ARLOCK),
    .m_axi_gmem_x_test_ARCACHE(gmem_x_test_ARCACHE),
    .m_axi_gmem_x_test_ARPROT(gmem_x_test_ARPROT),
    .m_axi_gmem_x_test_ARQOS(gmem_x_test_ARQOS),
    .m_axi_gmem_x_test_ARREGION(gmem_x_test_ARREGION),
    .m_axi_gmem_x_test_ARUSER(gmem_x_test_ARUSER),
    .m_axi_gmem_x_test_RVALID(gmem_x_test_RVALID),
    .m_axi_gmem_x_test_RREADY(gmem_x_test_RREADY),
    .m_axi_gmem_x_test_RDATA(gmem_x_test_RDATA),
    .m_axi_gmem_x_test_RLAST(gmem_x_test_RLAST),
    .m_axi_gmem_x_test_RID(gmem_x_test_RID),
    .m_axi_gmem_x_test_RUSER(gmem_x_test_RUSER),
    .m_axi_gmem_x_test_RRESP(gmem_x_test_RRESP),
    .m_axi_gmem_x_test_BVALID(gmem_x_test_BVALID),
    .m_axi_gmem_x_test_BREADY(gmem_x_test_BREADY),
    .m_axi_gmem_x_test_BRESP(gmem_x_test_BRESP),
    .m_axi_gmem_x_test_BID(gmem_x_test_BID),
    .m_axi_gmem_x_test_BUSER(gmem_x_test_BUSER),
    .m_axi_gmem_x_train_AWVALID(gmem_x_train_AWVALID),
    .m_axi_gmem_x_train_AWREADY(gmem_x_train_AWREADY),
    .m_axi_gmem_x_train_AWADDR(gmem_x_train_AWADDR),
    .m_axi_gmem_x_train_AWID(gmem_x_train_AWID),
    .m_axi_gmem_x_train_AWLEN(gmem_x_train_AWLEN),
    .m_axi_gmem_x_train_AWSIZE(gmem_x_train_AWSIZE),
    .m_axi_gmem_x_train_AWBURST(gmem_x_train_AWBURST),
    .m_axi_gmem_x_train_AWLOCK(gmem_x_train_AWLOCK),
    .m_axi_gmem_x_train_AWCACHE(gmem_x_train_AWCACHE),
    .m_axi_gmem_x_train_AWPROT(gmem_x_train_AWPROT),
    .m_axi_gmem_x_train_AWQOS(gmem_x_train_AWQOS),
    .m_axi_gmem_x_train_AWREGION(gmem_x_train_AWREGION),
    .m_axi_gmem_x_train_AWUSER(gmem_x_train_AWUSER),
    .m_axi_gmem_x_train_WVALID(gmem_x_train_WVALID),
    .m_axi_gmem_x_train_WREADY(gmem_x_train_WREADY),
    .m_axi_gmem_x_train_WDATA(gmem_x_train_WDATA),
    .m_axi_gmem_x_train_WSTRB(gmem_x_train_WSTRB),
    .m_axi_gmem_x_train_WLAST(gmem_x_train_WLAST),
    .m_axi_gmem_x_train_WID(gmem_x_train_WID),
    .m_axi_gmem_x_train_WUSER(gmem_x_train_WUSER),
    .m_axi_gmem_x_train_ARVALID(gmem_x_train_ARVALID),
    .m_axi_gmem_x_train_ARREADY(gmem_x_train_ARREADY),
    .m_axi_gmem_x_train_ARADDR(gmem_x_train_ARADDR),
    .m_axi_gmem_x_train_ARID(gmem_x_train_ARID),
    .m_axi_gmem_x_train_ARLEN(gmem_x_train_ARLEN),
    .m_axi_gmem_x_train_ARSIZE(gmem_x_train_ARSIZE),
    .m_axi_gmem_x_train_ARBURST(gmem_x_train_ARBURST),
    .m_axi_gmem_x_train_ARLOCK(gmem_x_train_ARLOCK),
    .m_axi_gmem_x_train_ARCACHE(gmem_x_train_ARCACHE),
    .m_axi_gmem_x_train_ARPROT(gmem_x_train_ARPROT),
    .m_axi_gmem_x_train_ARQOS(gmem_x_train_ARQOS),
    .m_axi_gmem_x_train_ARREGION(gmem_x_train_ARREGION),
    .m_axi_gmem_x_train_ARUSER(gmem_x_train_ARUSER),
    .m_axi_gmem_x_train_RVALID(gmem_x_train_RVALID),
    .m_axi_gmem_x_train_RREADY(gmem_x_train_RREADY),
    .m_axi_gmem_x_train_RDATA(gmem_x_train_RDATA),
    .m_axi_gmem_x_train_RLAST(gmem_x_train_RLAST),
    .m_axi_gmem_x_train_RID(gmem_x_train_RID),
    .m_axi_gmem_x_train_RUSER(gmem_x_train_RUSER),
    .m_axi_gmem_x_train_RRESP(gmem_x_train_RRESP),
    .m_axi_gmem_x_train_BVALID(gmem_x_train_BVALID),
    .m_axi_gmem_x_train_BREADY(gmem_x_train_BREADY),
    .m_axi_gmem_x_train_BRESP(gmem_x_train_BRESP),
    .m_axi_gmem_x_train_BID(gmem_x_train_BID),
    .m_axi_gmem_x_train_BUSER(gmem_x_train_BUSER),
    .m_axi_gmem_y_train_AWVALID(gmem_y_train_AWVALID),
    .m_axi_gmem_y_train_AWREADY(gmem_y_train_AWREADY),
    .m_axi_gmem_y_train_AWADDR(gmem_y_train_AWADDR),
    .m_axi_gmem_y_train_AWID(gmem_y_train_AWID),
    .m_axi_gmem_y_train_AWLEN(gmem_y_train_AWLEN),
    .m_axi_gmem_y_train_AWSIZE(gmem_y_train_AWSIZE),
    .m_axi_gmem_y_train_AWBURST(gmem_y_train_AWBURST),
    .m_axi_gmem_y_train_AWLOCK(gmem_y_train_AWLOCK),
    .m_axi_gmem_y_train_AWCACHE(gmem_y_train_AWCACHE),
    .m_axi_gmem_y_train_AWPROT(gmem_y_train_AWPROT),
    .m_axi_gmem_y_train_AWQOS(gmem_y_train_AWQOS),
    .m_axi_gmem_y_train_AWREGION(gmem_y_train_AWREGION),
    .m_axi_gmem_y_train_AWUSER(gmem_y_train_AWUSER),
    .m_axi_gmem_y_train_WVALID(gmem_y_train_WVALID),
    .m_axi_gmem_y_train_WREADY(gmem_y_train_WREADY),
    .m_axi_gmem_y_train_WDATA(gmem_y_train_WDATA),
    .m_axi_gmem_y_train_WSTRB(gmem_y_train_WSTRB),
    .m_axi_gmem_y_train_WLAST(gmem_y_train_WLAST),
    .m_axi_gmem_y_train_WID(gmem_y_train_WID),
    .m_axi_gmem_y_train_WUSER(gmem_y_train_WUSER),
    .m_axi_gmem_y_train_ARVALID(gmem_y_train_ARVALID),
    .m_axi_gmem_y_train_ARREADY(gmem_y_train_ARREADY),
    .m_axi_gmem_y_train_ARADDR(gmem_y_train_ARADDR),
    .m_axi_gmem_y_train_ARID(gmem_y_train_ARID),
    .m_axi_gmem_y_train_ARLEN(gmem_y_train_ARLEN),
    .m_axi_gmem_y_train_ARSIZE(gmem_y_train_ARSIZE),
    .m_axi_gmem_y_train_ARBURST(gmem_y_train_ARBURST),
    .m_axi_gmem_y_train_ARLOCK(gmem_y_train_ARLOCK),
    .m_axi_gmem_y_train_ARCACHE(gmem_y_train_ARCACHE),
    .m_axi_gmem_y_train_ARPROT(gmem_y_train_ARPROT),
    .m_axi_gmem_y_train_ARQOS(gmem_y_train_ARQOS),
    .m_axi_gmem_y_train_ARREGION(gmem_y_train_ARREGION),
    .m_axi_gmem_y_train_ARUSER(gmem_y_train_ARUSER),
    .m_axi_gmem_y_train_RVALID(gmem_y_train_RVALID),
    .m_axi_gmem_y_train_RREADY(gmem_y_train_RREADY),
    .m_axi_gmem_y_train_RDATA(gmem_y_train_RDATA),
    .m_axi_gmem_y_train_RLAST(gmem_y_train_RLAST),
    .m_axi_gmem_y_train_RID(gmem_y_train_RID),
    .m_axi_gmem_y_train_RUSER(gmem_y_train_RUSER),
    .m_axi_gmem_y_train_RRESP(gmem_y_train_RRESP),
    .m_axi_gmem_y_train_BVALID(gmem_y_train_BVALID),
    .m_axi_gmem_y_train_BREADY(gmem_y_train_BREADY),
    .m_axi_gmem_y_train_BRESP(gmem_y_train_BRESP),
    .m_axi_gmem_y_train_BID(gmem_y_train_BID),
    .m_axi_gmem_y_train_BUSER(gmem_y_train_BUSER),
    .m_axi_gmem_y_test_AWVALID(gmem_y_test_AWVALID),
    .m_axi_gmem_y_test_AWREADY(gmem_y_test_AWREADY),
    .m_axi_gmem_y_test_AWADDR(gmem_y_test_AWADDR),
    .m_axi_gmem_y_test_AWID(gmem_y_test_AWID),
    .m_axi_gmem_y_test_AWLEN(gmem_y_test_AWLEN),
    .m_axi_gmem_y_test_AWSIZE(gmem_y_test_AWSIZE),
    .m_axi_gmem_y_test_AWBURST(gmem_y_test_AWBURST),
    .m_axi_gmem_y_test_AWLOCK(gmem_y_test_AWLOCK),
    .m_axi_gmem_y_test_AWCACHE(gmem_y_test_AWCACHE),
    .m_axi_gmem_y_test_AWPROT(gmem_y_test_AWPROT),
    .m_axi_gmem_y_test_AWQOS(gmem_y_test_AWQOS),
    .m_axi_gmem_y_test_AWREGION(gmem_y_test_AWREGION),
    .m_axi_gmem_y_test_AWUSER(gmem_y_test_AWUSER),
    .m_axi_gmem_y_test_WVALID(gmem_y_test_WVALID),
    .m_axi_gmem_y_test_WREADY(gmem_y_test_WREADY),
    .m_axi_gmem_y_test_WDATA(gmem_y_test_WDATA),
    .m_axi_gmem_y_test_WSTRB(gmem_y_test_WSTRB),
    .m_axi_gmem_y_test_WLAST(gmem_y_test_WLAST),
    .m_axi_gmem_y_test_WID(gmem_y_test_WID),
    .m_axi_gmem_y_test_WUSER(gmem_y_test_WUSER),
    .m_axi_gmem_y_test_ARVALID(gmem_y_test_ARVALID),
    .m_axi_gmem_y_test_ARREADY(gmem_y_test_ARREADY),
    .m_axi_gmem_y_test_ARADDR(gmem_y_test_ARADDR),
    .m_axi_gmem_y_test_ARID(gmem_y_test_ARID),
    .m_axi_gmem_y_test_ARLEN(gmem_y_test_ARLEN),
    .m_axi_gmem_y_test_ARSIZE(gmem_y_test_ARSIZE),
    .m_axi_gmem_y_test_ARBURST(gmem_y_test_ARBURST),
    .m_axi_gmem_y_test_ARLOCK(gmem_y_test_ARLOCK),
    .m_axi_gmem_y_test_ARCACHE(gmem_y_test_ARCACHE),
    .m_axi_gmem_y_test_ARPROT(gmem_y_test_ARPROT),
    .m_axi_gmem_y_test_ARQOS(gmem_y_test_ARQOS),
    .m_axi_gmem_y_test_ARREGION(gmem_y_test_ARREGION),
    .m_axi_gmem_y_test_ARUSER(gmem_y_test_ARUSER),
    .m_axi_gmem_y_test_RVALID(gmem_y_test_RVALID),
    .m_axi_gmem_y_test_RREADY(gmem_y_test_RREADY),
    .m_axi_gmem_y_test_RDATA(gmem_y_test_RDATA),
    .m_axi_gmem_y_test_RLAST(gmem_y_test_RLAST),
    .m_axi_gmem_y_test_RID(gmem_y_test_RID),
    .m_axi_gmem_y_test_RUSER(gmem_y_test_RUSER),
    .m_axi_gmem_y_test_RRESP(gmem_y_test_RRESP),
    .m_axi_gmem_y_test_BVALID(gmem_y_test_BVALID),
    .m_axi_gmem_y_test_BREADY(gmem_y_test_BREADY),
    .m_axi_gmem_y_test_BRESP(gmem_y_test_BRESP),
    .m_axi_gmem_y_test_BID(gmem_y_test_BID),
    .m_axi_gmem_y_test_BUSER(gmem_y_test_BUSER));
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = dut_rst;
assign AESL_start = svtb_top.misc_if.tb2dut_ap_start;
assign AESL_ready = svtb_top.misc_if.dut2tb_ap_ready;
assign AESL_done  = svtb_top.misc_if.dut2tb_ap_done;
assign all_finish = svtb_top.misc_if.finished;
initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 1;
end
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end

    sv_module_top svtb_top();

////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"
endmodule
