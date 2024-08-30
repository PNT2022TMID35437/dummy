set_device -family {SmartFusion2} -die {M2S005} -speed {STD} -range {IND}
read_verilog -mode system_verilog {D:\libero_tests\I2C_smart_build\component\work\MSS_sys_i2c_sb\CCC_0\MSS_sys_i2c_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_smart_build\component\work\MSS_sys_i2c_sb\FABOSC_0\MSS_sys_i2c_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_smart_build\component\work\MSS_sys_i2c_sb_MSS\MSS_sys_i2c_sb_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_smart_build\component\Actel\DirectCore\COREI2C\7.0.102\rtl\vlog\core\corei2creal.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_smart_build\component\Actel\DirectCore\COREI2C\7.0.102\rtl\vlog\core\corei2c.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_smart_build\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_smart_build\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\I2C_smart_build\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3_muxptob3.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\I2C_smart_build\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3_iaddr_reg.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\I2C_smart_build\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3.v}
read_verilog -mode system_verilog {D:\libero_tests\I2C_smart_build\component\work\MSS_sys_i2c_sb\MSS_sys_i2c_sb.v}
set_top_level {MSS_sys_i2c_sb}
read_sdc -component {D:\libero_tests\I2C_smart_build\component\work\MSS_sys_i2c_sb\CCC_0\MSS_sys_i2c_sb_CCC_0_FCCC.sdc}
read_sdc -component {D:\libero_tests\I2C_smart_build\component\work\MSS_sys_i2c_sb\FABOSC_0\MSS_sys_i2c_sb_FABOSC_0_OSC.sdc}
read_sdc -component {D:\libero_tests\I2C_smart_build\component\work\MSS_sys_i2c_sb_MSS\MSS_sys_i2c_sb_MSS.sdc}
derive_constraints
write_sdc {D:\libero_tests\I2C_smart_build\constraint\MSS_sys_i2c_sb_derived_constraints.sdc}
write_ndc {D:\libero_tests\I2C_smart_build\constraint\MSS_sys_i2c_sb_derived_constraints.ndc}
write_pdc {D:\libero_tests\I2C_smart_build\constraint\fp\MSS_sys_i2c_sb_derived_constraints.pdc}
