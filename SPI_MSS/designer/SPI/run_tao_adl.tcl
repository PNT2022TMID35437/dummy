set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\SPI_MSS\designer\SPI\SPI.adl}
read_afl {D:\libero_tests\SPI_MSS\designer\SPI\SPI.afl}
map_netlist
read_sdc {D:\libero_tests\SPI_MSS\constraint\SPI_derived_constraints.sdc}
check_constraints {D:\libero_tests\SPI_MSS\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\SPI_MSS\designer\SPI\place_route.sdc}
