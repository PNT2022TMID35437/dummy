set_family {SmartFusion2}
read_adl {D:\libero_tests\UART_ABFN_MSS\designer\MSS_U\MSS_U.adl}
map_netlist
read_sdc {D:\libero_tests\UART_ABFN_MSS\constraint\MSS_U_derived_constraints.sdc}
check_constraints {D:\libero_tests\UART_ABFN_MSS\constraint\timing_sdc_check.log}
