set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\ABFN_GPIO_UART_FAB\designer\UART_GPIO_FAB_SB\UART_GPIO_FAB_SB.adl}
read_afl {D:\libero_tests\ABFN_GPIO_UART_FAB\designer\UART_GPIO_FAB_SB\UART_GPIO_FAB_SB.afl}
map_netlist
read_sdc {D:\libero_tests\ABFN_GPIO_UART_FAB\constraint\UART_GPIO_FAB_SB_derived_constraints.sdc}
check_constraints {D:\libero_tests\ABFN_GPIO_UART_FAB\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\ABFN_GPIO_UART_FAB\designer\UART_GPIO_FAB_SB\place_route.sdc}
