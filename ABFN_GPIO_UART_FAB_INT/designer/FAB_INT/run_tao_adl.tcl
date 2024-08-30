set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\ABFN_GPIO_UART_FAB_INT\designer\FAB_INT\FAB_INT.adl}
read_afl {D:\libero_tests\ABFN_GPIO_UART_FAB_INT\designer\FAB_INT\FAB_INT.afl}
map_netlist
read_sdc {D:\libero_tests\ABFN_GPIO_UART_FAB_INT\constraint\FAB_INT_derived_constraints.sdc}
check_constraints {D:\libero_tests\ABFN_GPIO_UART_FAB_INT\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\ABFN_GPIO_UART_FAB_INT\designer\FAB_INT\place_route.sdc}
