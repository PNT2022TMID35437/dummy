set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\CORE_I2C_TEMP\designer\TEMP\TEMP.adl}
read_afl {D:\libero_tests\CORE_I2C_TEMP\designer\TEMP\TEMP.afl}
map_netlist
read_sdc {D:\libero_tests\CORE_I2C_TEMP\constraint\TEMP_derived_constraints.sdc}
check_constraints {D:\libero_tests\CORE_I2C_TEMP\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\CORE_I2C_TEMP\designer\TEMP\place_route.sdc}
