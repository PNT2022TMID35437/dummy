set_device -family {SmartFusion2} -die {M2S005} -speed {STD} -range {IND}
read_verilog -mode system_verilog {D:\libero_tests\I2C_1\component\work\IIC_MSS\IIC_MSS.v}
set_top_level {IIC_MSS}
read_sdc -component {D:\libero_tests\I2C_1\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.sdc}
derive_constraints
write_sdc {D:\libero_tests\I2C_1\constraint\IIC_MSS_derived_constraints.sdc}
write_ndc {D:\libero_tests\I2C_1\constraint\IIC_MSS_derived_constraints.ndc}
write_pdc {D:\libero_tests\I2C_1\constraint\fp\IIC_MSS_derived_constraints.pdc}
