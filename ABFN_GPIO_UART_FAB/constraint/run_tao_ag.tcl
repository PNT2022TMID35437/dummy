set_device -family {SmartFusion2} -die {M2S005} -speed {STD} -range {IND}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\CCC_0\UART_GPIO_FAB_SB_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\FABOSC_0\UART_GPIO_FAB_SB_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb_MSS\UART_GPIO_FAB_SB_sb_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\Actel\DirectCore\CoreGPIO\3.0.120\rtl\vlog\core\coregpio.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\CoreUARTapb_0_0\rtl\vlog\core\Clock_gen.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\CoreUARTapb_0_0\rtl\vlog\core\fifo_256x8_smartfusion2.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\CoreUARTapb_0_0\rtl\vlog\core\Rx_async.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\CoreUARTapb_0_0\rtl\vlog\core\Tx_async.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\CoreUARTapb_0_0\rtl\vlog\core\CoreUART.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\CoreUARTapb_0_0\rtl\vlog\core\CoreUARTapb.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\ABFN_GPIO_UART_FAB\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3_muxptob3.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\ABFN_GPIO_UART_FAB\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3_iaddr_reg.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\ABFN_GPIO_UART_FAB\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\UART_GPIO_FAB_SB_sb.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB\UART_GPIO_FAB_SB.v}
set_top_level {UART_GPIO_FAB_SB}
read_sdc -component {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\CCC_0\UART_GPIO_FAB_SB_sb_CCC_0_FCCC.sdc}
read_sdc -component {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb\FABOSC_0\UART_GPIO_FAB_SB_sb_FABOSC_0_OSC.sdc}
read_sdc -component {D:\libero_tests\ABFN_GPIO_UART_FAB\component\work\UART_GPIO_FAB_SB_sb_MSS\UART_GPIO_FAB_SB_sb_MSS.sdc}
derive_constraints
write_sdc {D:\libero_tests\ABFN_GPIO_UART_FAB\constraint\UART_GPIO_FAB_SB_derived_constraints.sdc}
write_ndc {D:\libero_tests\ABFN_GPIO_UART_FAB\constraint\UART_GPIO_FAB_SB_derived_constraints.ndc}
write_pdc {D:\libero_tests\ABFN_GPIO_UART_FAB\constraint\fp\UART_GPIO_FAB_SB_derived_constraints.pdc}
