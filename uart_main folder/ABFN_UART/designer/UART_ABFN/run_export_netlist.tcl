set_device -fam SmartFusion2
read_verilog -top_module_name {UART_ABFN} \
    -file {D:\libero_tests\ABFN_UART\synthesis\UART_ABFN.vm}
write_verilog -file {D:\libero_tests\ABFN_UART\synthesis\UART_ABFN.v}
