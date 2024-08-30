set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART_sb\CCC_0\FABRIC_UART_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART_sb\FABOSC_0\FABRIC_UART_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART_sb_MSS\FABRIC_UART_sb_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART_sb\CoreUARTapb_0_0\rtl\vlog\core\Clock_gen.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART_sb\CoreUARTapb_0_0\rtl\vlog\core\fifo_256x8_smartfusion2.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART_sb\CoreUARTapb_0_0\rtl\vlog\core\Rx_async.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART_sb\CoreUARTapb_0_0\rtl\vlog\core\Tx_async.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART_sb\CoreUARTapb_0_0\rtl\vlog\core\CoreUART.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART_sb\CoreUARTapb_0_0\rtl\vlog\core\CoreUARTapb.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\UART_ABFN_FAB\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3_muxptob3.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\UART_ABFN_FAB\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3_iaddr_reg.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\UART_ABFN_FAB\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART_sb\FABRIC_UART_sb.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_FAB\component\work\FABRIC_UART\FABRIC_UART.v}
set_top_level {FABRIC_UART}
map_netlist
read_sdc {D:\libero_tests\UART_ABFN_FAB\constraint\FABRIC_UART_derived_constraints.sdc}
check_constraints {D:\libero_tests\UART_ABFN_FAB\constraint\synthesis_sdc_check.log}
