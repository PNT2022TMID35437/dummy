set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb\CCC_0\MSS_U_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb\FABOSC_0\MSS_U_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb_MSS\MSS_U_sb_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb\MSS_U_sb.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U\MSS_U.v}
set_top_level {MSS_U}
map_netlist
read_sdc {D:\libero_tests\UART_ABFN_MSS\constraint\MSS_U_derived_constraints.sdc}
check_constraints {D:\libero_tests\UART_ABFN_MSS\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\UART_ABFN_MSS\designer\MSS_U\synthesis.fdc}
