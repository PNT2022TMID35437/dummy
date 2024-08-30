set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\work\TEMP_sb\CCC_0\TEMP_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\work\TEMP_sb\FABOSC_0\TEMP_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\work\TEMP_sb_MSS\TEMP_sb_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\Actel\DirectCore\COREI2C\7.0.102\rtl\vlog\core_obfuscated\corei2creal.v}
read_verilog -mode system_verilog {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\Actel\DirectCore\COREI2C\7.0.102\rtl\vlog\core_obfuscated\corei2c.v}
read_verilog -mode system_verilog {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\Actel\DirectCore\CoreGPIO\3.0.120\rtl\vlog\core\coregpio.v}
read_verilog -mode system_verilog {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3_muxptob3.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3_iaddr_reg.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\Actel\DirectCore\CoreAPB3\4.1.100\rtl\vlog\core\coreapb3.v}
read_verilog -mode system_verilog {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\work\TEMP_sb\TEMP_sb.v}
read_verilog -mode system_verilog {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\component\work\TEMP\TEMP.v}
set_top_level {TEMP}
map_netlist
read_sdc {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\constraint\TEMP_derived_constraints.sdc}
check_constraints {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\CORE_I2C_TEMP_alert_int_gpio\designer\TEMP\synthesis.fdc}
