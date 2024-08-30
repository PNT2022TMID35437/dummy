set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\Ethernet_dummy\designer\eth_dummy\eth_dummy.adl}
read_afl {D:\libero_tests\Ethernet_dummy\designer\eth_dummy\eth_dummy.afl}
map_netlist
read_sdc {D:\libero_tests\Ethernet_dummy\constraint\eth_dummy_derived_constraints.sdc}
check_constraints {D:\libero_tests\Ethernet_dummy\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\Ethernet_dummy\designer\eth_dummy\place_route.sdc}
