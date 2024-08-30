set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART\component\work\UART_MSS\UART_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\ABFN_UART\component\work\UART_ABFN\UART_ABFN.v}
set_top_level {UART_ABFN}
map_netlist
check_constraints {D:\libero_tests\ABFN_UART\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\ABFN_UART\designer\UART_ABFN\synthesis.fdc}
