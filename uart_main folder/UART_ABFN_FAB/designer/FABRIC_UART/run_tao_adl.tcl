set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\UART_ABFN_FAB\designer\FABRIC_UART\FABRIC_UART.adl}
read_afl {D:\libero_tests\UART_ABFN_FAB\designer\FABRIC_UART\FABRIC_UART.afl}
map_netlist
read_sdc {D:\libero_tests\UART_ABFN_FAB\constraint\FABRIC_UART_derived_constraints.sdc}
check_constraints {D:\libero_tests\UART_ABFN_FAB\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\UART_ABFN_FAB\designer\FABRIC_UART\place_route.sdc}
