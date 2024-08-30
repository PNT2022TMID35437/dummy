set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\UART_ABFN_MSS\designer\MSS_U\MSS_U.adl}
read_afl {D:\libero_tests\UART_ABFN_MSS\designer\MSS_U\MSS_U.afl}
map_netlist
read_sdc {D:\libero_tests\UART_ABFN_MSS\constraint\MSS_U_derived_constraints.sdc}
check_constraints {D:\libero_tests\UART_ABFN_MSS\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\UART_ABFN_MSS\designer\MSS_U\place_route.sdc}
