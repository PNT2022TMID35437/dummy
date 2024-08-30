set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\DUMMY_GPIO_MSS\designer\GPIOOOO\GPIOOOO.adl}
read_afl {D:\libero_tests\DUMMY_GPIO_MSS\designer\GPIOOOO\GPIOOOO.afl}
map_netlist
read_sdc {D:\libero_tests\DUMMY_GPIO_MSS\constraint\GPIOOOO_derived_constraints.sdc}
check_constraints {D:\libero_tests\DUMMY_GPIO_MSS\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\DUMMY_GPIO_MSS\designer\GPIOOOO\place_route.sdc}
