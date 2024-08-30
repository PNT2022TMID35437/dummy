set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\UART_INT\designer\UART_INT1\UART_INT1.adl}
read_afl {D:\libero_tests\UART_INT\designer\UART_INT1\UART_INT1.afl}
map_netlist
read_sdc {D:\libero_tests\UART_INT\constraint\UART_INT1_derived_constraints.sdc}
check_constraints {D:\libero_tests\UART_INT\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\UART_INT\designer\UART_INT1\place_route.sdc}
