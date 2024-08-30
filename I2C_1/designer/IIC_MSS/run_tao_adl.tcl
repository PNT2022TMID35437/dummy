set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_adl {D:\libero_tests\I2C_1\designer\IIC_MSS\IIC_MSS.adl}
read_afl {D:\libero_tests\I2C_1\designer\IIC_MSS\IIC_MSS.afl}
map_netlist
read_sdc {D:\libero_tests\I2C_1\constraint\IIC_MSS_derived_constraints.sdc}
check_constraints {D:\libero_tests\I2C_1\constraint\placer_sdc_errors.log}
write_sdc -mode layout {D:\libero_tests\I2C_1\designer\IIC_MSS\place_route.sdc}
