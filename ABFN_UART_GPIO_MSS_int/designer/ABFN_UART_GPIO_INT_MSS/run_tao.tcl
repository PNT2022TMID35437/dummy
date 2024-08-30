set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb\CCC_0\ABFN_UART_GPIO_INT_MSS_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb\FABOSC_0\ABFN_UART_GPIO_INT_MSS_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb_MSS\ABFN_UART_GPIO_INT_MSS_sb_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb\ABFN_UART_GPIO_INT_MSS_sb.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS\ABFN_UART_GPIO_INT_MSS.v}
set_top_level {ABFN_UART_GPIO_INT_MSS}
map_netlist
read_sdc {D:\libero_tests\ABFN_UART_GPIO_MSS_int\constraint\ABFN_UART_GPIO_INT_MSS_derived_constraints.sdc}
check_constraints {D:\libero_tests\ABFN_UART_GPIO_MSS_int\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\ABFN_UART_GPIO_MSS_int\designer\ABFN_UART_GPIO_INT_MSS\synthesis.fdc}
