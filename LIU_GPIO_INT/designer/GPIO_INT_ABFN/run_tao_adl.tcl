set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\GPIO_INT_ABFN.adl}
read_afl {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\GPIO_INT_ABFN.afl}
map_netlist
read_sdc {D:\libero_tests\LIU_GPIO_INT\constraint\GPIO_INT_ABFN_derived_constraints.sdc}
check_constraints {D:\libero_tests\LIU_GPIO_INT\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\place_route.sdc}
