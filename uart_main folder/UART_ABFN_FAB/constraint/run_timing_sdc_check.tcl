set_family {SmartFusion2}
read_adl {D:\libero_tests\UART_ABFN_FAB\designer\FABRIC_UART\FABRIC_UART.adl}
map_netlist
read_sdc {D:\libero_tests\UART_ABFN_FAB\constraint\FABRIC_UART_derived_constraints.sdc}
check_constraints {D:\libero_tests\UART_ABFN_FAB\constraint\timing_sdc_check.log}
