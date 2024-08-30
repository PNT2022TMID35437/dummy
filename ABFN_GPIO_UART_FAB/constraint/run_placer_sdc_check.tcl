set_family {SmartFusion2}
read_adl {D:\libero_tests\ABFN_GPIO_UART_FAB\designer\UART_GPIO_FAB_SB\UART_GPIO_FAB_SB.adl}
map_netlist
read_sdc {D:\libero_tests\ABFN_GPIO_UART_FAB\constraint\UART_GPIO_FAB_SB_derived_constraints.sdc}
check_constraints {D:\libero_tests\ABFN_GPIO_UART_FAB\constraint\placer_sdc_check.log}
