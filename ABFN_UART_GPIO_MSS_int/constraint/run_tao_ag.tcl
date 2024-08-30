set_device -family {SmartFusion2} -die {M2S005} -speed {STD} -range {IND}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb\CCC_0\ABFN_UART_GPIO_INT_MSS_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb\FABOSC_0\ABFN_UART_GPIO_INT_MSS_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb_MSS\ABFN_UART_GPIO_INT_MSS_sb_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb\ABFN_UART_GPIO_INT_MSS_sb.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS\ABFN_UART_GPIO_INT_MSS.v}
set_top_level {ABFN_UART_GPIO_INT_MSS}
read_sdc -component {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb\CCC_0\ABFN_UART_GPIO_INT_MSS_sb_CCC_0_FCCC.sdc}
read_sdc -component {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb\FABOSC_0\ABFN_UART_GPIO_INT_MSS_sb_FABOSC_0_OSC.sdc}
read_sdc -component {D:\libero_tests\ABFN_UART_GPIO_MSS_int\component\work\ABFN_UART_GPIO_INT_MSS_sb_MSS\ABFN_UART_GPIO_INT_MSS_sb_MSS.sdc}
derive_constraints
write_sdc {D:\libero_tests\ABFN_UART_GPIO_MSS_int\constraint\ABFN_UART_GPIO_INT_MSS_derived_constraints.sdc}
write_ndc {D:\libero_tests\ABFN_UART_GPIO_MSS_int\constraint\ABFN_UART_GPIO_INT_MSS_derived_constraints.ndc}
write_pdc {D:\libero_tests\ABFN_UART_GPIO_MSS_int\constraint\fp\ABFN_UART_GPIO_INT_MSS_derived_constraints.pdc}
