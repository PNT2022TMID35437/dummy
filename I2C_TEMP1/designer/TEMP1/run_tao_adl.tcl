set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\I2C_TEMP1\designer\TEMP1\TEMP1.adl}
read_afl {D:\libero_tests\I2C_TEMP1\designer\TEMP1\TEMP1.afl}
map_netlist
read_sdc {D:\libero_tests\I2C_TEMP1\constraint\TEMP1_derived_constraints.sdc}
check_constraints {D:\libero_tests\I2C_TEMP1\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\I2C_TEMP1\designer\TEMP1\place_route.sdc}
