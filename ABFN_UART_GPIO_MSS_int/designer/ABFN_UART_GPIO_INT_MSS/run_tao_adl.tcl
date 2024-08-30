set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\ABFN_UART_GPIO_MSS_int\designer\ABFN_UART_GPIO_INT_MSS\ABFN_UART_GPIO_INT_MSS.adl}
read_afl {D:\libero_tests\ABFN_UART_GPIO_MSS_int\designer\ABFN_UART_GPIO_INT_MSS\ABFN_UART_GPIO_INT_MSS.afl}
map_netlist
read_sdc {D:\libero_tests\ABFN_UART_GPIO_MSS_int\constraint\ABFN_UART_GPIO_INT_MSS_derived_constraints.sdc}
check_constraints {D:\libero_tests\ABFN_UART_GPIO_MSS_int\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\ABFN_UART_GPIO_MSS_int\designer\ABFN_UART_GPIO_INT_MSS\place_route.sdc}
