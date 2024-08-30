set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c\MSS_sys_i2c.adl}
read_afl {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c\MSS_sys_i2c.afl}
map_netlist
read_sdc {D:\libero_tests\I2C_smart_build\constraint\MSS_sys_i2c_derived_constraints.sdc}
check_constraints {D:\libero_tests\I2C_smart_build\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c\place_route.sdc}
