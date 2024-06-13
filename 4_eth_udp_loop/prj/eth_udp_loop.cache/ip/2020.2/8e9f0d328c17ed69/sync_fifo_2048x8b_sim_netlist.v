// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Jul  6 11:40:28 2023
// Host        : DESKTOP-OE2QKLR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sync_fifo_2048x8b_sim_netlist.v
// Design      : sync_fifo_2048x8b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sync_fifo_2048x8b,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "2kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2045" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2044" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "2048" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[10:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 106880)
`pragma protect data_block
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
06EHRJw=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
