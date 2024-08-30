set_device -family {SmartFusion2} -die {M2S005} -speed {STD} -range {IND}
read_verilog -mode system_verilog {D:\libero_tests\I2C_TEMP1\component\Actel\DirectCore\COREI2C\7.2.101\rtl\vlog\core\corei2creal.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_TEMP1\component\work\COREI2C_C0\COREI2C_C0_0\rtl\vlog\core\corei2c.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_TEMP1\component\work\COREI2C_C0\COREI2C_C0.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\I2C_TEMP1\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3_muxptob3.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\I2C_TEMP1\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3_iaddr_reg.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\I2C_TEMP1\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_TEMP1\component\work\CoreAPB3_C0\CoreAPB3_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_TEMP1\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_TEMP1\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_TEMP1\component\work\TEMP1_MSS\TEMP1_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_TEMP1\component\work\TEMP1\TEMP1.v}
set_top_level {TEMP1}
read_sdc -component {D:\libero_tests\I2C_TEMP1\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.sdc}
derive_constraints
write_sdc {D:\libero_tests\I2C_TEMP1\constraint\TEMP1_derived_constraints.sdc}
write_ndc {D:\libero_tests\I2C_TEMP1\constraint\TEMP1_derived_constraints.ndc}
write_pdc {D:\libero_tests\I2C_TEMP1\constraint\fp\TEMP1_derived_constraints.pdc}
