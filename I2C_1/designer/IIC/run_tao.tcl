set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog {D:\libero_tests\I2C_1\component\work\IIC_MSS\IIC_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_1\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_1\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_1\component\work\IIC\IIC.v}
set_top_level {IIC}
map_netlist
read_sdc {D:\libero_tests\I2C_1\constraint\IIC_derived_constraints.sdc}
check_constraints {D:\libero_tests\I2C_1\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\I2C_1\designer\IIC\synthesis.fdc}
