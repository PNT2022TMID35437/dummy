set_device -family {SmartFusion2} -die {M2S005} -speed {STD} -range {IND}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb\CCC_0\MSS_U_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb\FABOSC_0\MSS_U_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb_MSS\MSS_U_sb_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb\MSS_U_sb.v}
read_verilog -mode system_verilog {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U\MSS_U.v}
set_top_level {MSS_U}
read_sdc -component {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb\CCC_0\MSS_U_sb_CCC_0_FCCC.sdc}
read_sdc -component {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb\FABOSC_0\MSS_U_sb_FABOSC_0_OSC.sdc}
read_sdc -component {D:\libero_tests\UART_ABFN_MSS\component\work\MSS_U_sb_MSS\MSS_U_sb_MSS.sdc}
derive_constraints
write_sdc {D:\libero_tests\UART_ABFN_MSS\constraint\MSS_U_derived_constraints.sdc}
write_ndc {D:\libero_tests\UART_ABFN_MSS\constraint\MSS_U_derived_constraints.ndc}
write_pdc {D:\libero_tests\UART_ABFN_MSS\constraint\fp\MSS_U_derived_constraints.pdc}
