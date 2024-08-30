set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\DUMMY_GPIO_MSS\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3_muxptob3.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\DUMMY_GPIO_MSS\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3_iaddr_reg.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\DUMMY_GPIO_MSS\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_GPIO_MSS\component\work\CoreAPB3_C0\CoreAPB3_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_GPIO_MSS\component\work\CoreGPIO_C0\CoreGPIO_C0_0\rtl\vlog\core\coregpio.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_GPIO_MSS\component\work\CoreGPIO_C0\CoreGPIO_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_GPIO_MSS\component\work\GPIOOOO_MSS\GPIOOOO_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_GPIO_MSS\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_GPIO_MSS\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_GPIO_MSS\component\work\GPIOOOO\GPIOOOO.v}
set_top_level {GPIOOOO}
map_netlist
read_sdc {D:\libero_tests\DUMMY_GPIO_MSS\constraint\GPIOOOO_derived_constraints.sdc}
check_constraints {D:\libero_tests\DUMMY_GPIO_MSS\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\DUMMY_GPIO_MSS\designer\GPIOOOO\synthesis.fdc}
