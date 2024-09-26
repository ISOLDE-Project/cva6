set_property SRC_FILE_INFO {cfile:/home/uic18097/isolde/git/cva6/corev_apu/fpga/constraints/vc707.xdc rfile:../../../constraints/vc707.xdc id:1} [current_design]
set_property SRC_FILE_INFO {cfile:/home/uic18097/isolde/git/cva6/corev_apu/fpga/constraints/ariane.xdc rfile:../../../constraints/ariane.xdc id:2} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AV40 IOSTANDARD LVCMOS18} [get_ports cpu_reset]
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AV39 IOSTANDARD LVCMOS18 } [get_ports trst];
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M32 IOSTANDARD LVCMOS18 } [get_ports tck ];
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V29 IOSTANDARD LVCMOS18 } [get_ports tdi ];
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M28 IOSTANDARD LVCMOS18 } [get_ports tdo ];
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U31 IOSTANDARD LVCMOS18 } [get_ports tms ];
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AU36 IOSTANDARD LVCMOS18} [get_ports tx]
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AU33 IOSTANDARD LVCMOS18} [get_ports rx]
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AM39 IOSTANDARD LVCMOS18} [get_ports {led[0]}]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AN39 IOSTANDARD LVCMOS18} [get_ports {led[1]}]
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AR37 IOSTANDARD LVCMOS18} [get_ports {led[2]}]
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AT37 IOSTANDARD LVCMOS18} [get_ports {led[3]}]
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AR35 IOSTANDARD LVCMOS18} [get_ports {led[4]}]
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AP41 IOSTANDARD LVCMOS18} [get_ports {led[5]}]
set_property src_info {type:XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AP42 IOSTANDARD LVCMOS18} [get_ports {led[6]}]
set_property src_info {type:XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AU39 IOSTANDARD LVCMOS18} [get_ports {led[7]}]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AV30 IOSTANDARD LVCMOS18} [get_ports {sw[0]}]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AY33 IOSTANDARD LVCMOS18} [get_ports {sw[1]}]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN BA31 IOSTANDARD LVCMOS18} [get_ports {sw[2]}]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN BA32 IOSTANDARD LVCMOS18} [get_ports {sw[3]}]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AW30 IOSTANDARD LVCMOS18} [get_ports {sw[4]}]
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AY30 IOSTANDARD LVCMOS18} [get_ports {sw[5]}]
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN BA30 IOSTANDARD LVCMOS18} [get_ports {sw[6]}]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN BB31 IOSTANDARD LVCMOS18} [get_ports {sw[7]}]
set_property src_info {type:XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN BA37 IOSTANDARD LVCMOS18} [get_ports fan_pwm]
set_property src_info {type:XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N26 IOSTANDARD LVCMOS18} [get_ports eth_rst_n]; #IO_L14N_T2_SRCC_12 Sch=eth_phyrst_n
set_property src_info {type:XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N25 IOSTANDARD LVCMOS18} [get_ports eth_txck]; #IO_L14P_T2_SRCC_33 Sch=eth_tx_clk
set_property src_info {type:XDC file:1 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P23 IOSTANDARD LVCMOS18} [get_ports eth_txctl]; #IO_L20P_T3_33 Sch=eth_tx_en
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M26 IOSTANDARD LVCMOS18} [get_ports { eth_txd[0] }]; #IO_L22N_T3_33 Sch=eth_tx_d[0]
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L27 IOSTANDARD LVCMOS18} [get_ports { eth_txd[1] }]; #IO_L17P_T2_33 Sch=eth_tx_d[1]
set_property src_info {type:XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M27 IOSTANDARD LVCMOS18} [get_ports { eth_txd[2] }]; #IO_L18N_T2_33 Sch=eth_tx_d[2]
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N24 IOSTANDARD LVCMOS18} [get_ports { eth_txd[3] }]; #IO_L17N_T2_33 Sch=eth_tx_d[3]
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS18} [get_ports { eth_rxd[0] }]; #IO_L21N_T3_DQS_33 Sch=eth_rx_d[0]
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M24 IOSTANDARD LVCMOS18} [get_ports eth_rxck]; #IO_L13P_T2_MRCC_33 Sch=eth_rx_clk
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L25 IOSTANDARD LVCMOS18} [get_ports eth_rxctl]; #IO_L18P_T2_33 Sch=eth_rx_ctl
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J22 IOSTANDARD LVCMOS18} [get_ports { eth_rxd[1] }]; #IO_L21P_T3_DQS_33 Sch=eth_rx_d[1]
set_property src_info {type:XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVCMOS18} [get_ports { eth_rxd[2] }]; #IO_L20N_T3_33 Sch=eth_rx_d[2]
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L26 IOSTANDARD LVCMOS18} [get_ports { eth_rxd[3] }]; #IO_L22P_T3_33 Sch=eth_rx_d[3]
set_property src_info {type:XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N23 IOSTANDARD LVCMOS18} [get_ports eth_mdc ]; #IO_L23P_T3_33 Sch=eth_mdc
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L21 IOSTANDARD LVCMOS18} [get_ports eth_mdio]; #IO_L23N_T3_33 Sch=eth_mdio
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_clock_groups -asynchronous -group [get_clocks clk_out2_xlnx_clk_gen]
set_property src_info {type:XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AN30 IOSTANDARD LVCMOS18} [get_ports spi_clk_o]
set_property src_info {type:XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AT30 IOSTANDARD LVCMOS18} [get_ports spi_ss]
set_property src_info {type:XDC file:1 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AR30 IOSTANDARD LVCMOS18} [get_ports spi_miso]
set_property src_info {type:XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AP30 IOSTANDARD LVCMOS18} [get_ports spi_mosi]
set_property src_info {type:XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter tck 1.000
set_property src_info {type:XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_false_path   -from                    [get_ports trst_n ]
set_property src_info {type:XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_src/data_src_q_reg*/C] -to [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_dst/data_dst_q_reg*/D] 20.000
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_src/req_src_q_reg/C] -to [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_dst/req_dst_q_reg/D] 20.000
set_property src_info {type:XDC file:2 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_req/i_dst/ack_dst_q_reg/C] -to [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_req/i_src/ack_src_q_reg/D] 20.000
set_property src_info {type:XDC file:2 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_pins i_rstgen_main/i_rstgen_bypass/synch_regs_q_reg[3]/C] 3  -hold