set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog {D:\libero_tests\I2C_1\component\work\IIC_MSS\IIC_MSS.v}
set_top_level {IIC_MSS}
map_netlist
read_sdc {D:\libero_tests\I2C_1\constraint\IIC_MSS_derived_constraints.sdc}
check_constraints {D:\libero_tests\I2C_1\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\I2C_1\designer\IIC_MSS\synthesis.fdc}
