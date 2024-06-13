set_property SRC_FILE_INFO {cfile:c:/FPGA/ov5640_udp_pc/ov5640_udp_pc.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc rfile:../../../ov5640_udp_pc.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc id:1 order:EARLY scoped_inst:u_clk_wiz_0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/FPGA/ov5640_udp_pc/ov5640_udp_pc.srcs/constrs_1/new/ov5640_udp_pc.xdc rfile:../../../ov5640_udp_pc.srcs/constrs_1/new/ov5640_udp_pc.xdc id:2} [current_design]
current_instance u_clk_wiz_0
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 20.000 [get_ports -no_traverse {}]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 0.000 0.000} [get_ports {}]
set_property src_info {type:SCOPED_XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -source [get_ports clk_in1] -edges {1 2 3} -edge_shift {0.000 0.000 0.000} [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports sys_clk]
set_property src_info {type:XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports sys_rst_n]
set_property src_info {type:XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports eth_rst_n]
set_property src_info {type:XDC file:2 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports eth_rxc]
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports eth_rx_ctl]
set_property src_info {type:XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[0]}]
set_property src_info {type:XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[1]}]
set_property src_info {type:XDC file:2 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[2]}]
set_property src_info {type:XDC file:2 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[3]}]
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports eth_txc]
set_property src_info {type:XDC file:2 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports eth_tx_ctl]
set_property src_info {type:XDC file:2 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {eth_txd[0]}]
set_property src_info {type:XDC file:2 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports {eth_txd[1]}]
set_property src_info {type:XDC file:2 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {eth_txd[2]}]
set_property src_info {type:XDC file:2 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports {eth_txd[3]}]
set_property src_info {type:XDC file:2 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cam_pclk_IBUF]
set_property src_info {type:XDC file:2 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports cam_pclk]
set_property src_info {type:XDC file:2 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports cam_rst_n]
set_property src_info {type:XDC file:2 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports cam_pwdn]
set_property src_info {type:XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[0]}]
set_property src_info {type:XDC file:2 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U13 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[1]}]
set_property src_info {type:XDC file:2 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[2]}]
set_property src_info {type:XDC file:2 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[3]}]
set_property src_info {type:XDC file:2 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[4]}]
set_property src_info {type:XDC file:2 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[5]}]
set_property src_info {type:XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[6]}]
set_property src_info {type:XDC file:2 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[7]}]
set_property src_info {type:XDC file:2 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports cam_vsync]
set_property src_info {type:XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports cam_href]
set_property src_info {type:XDC file:2 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports cam_scl]
set_property src_info {type:XDC file:2 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports cam_sda]