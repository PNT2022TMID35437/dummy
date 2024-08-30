set_device -family {SmartFusion2} -die {M2S005} -speed {STD} -range {IND}
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
read_sdc -component {D:\libero_tests\DUMMY_GPIO_MSS\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.sdc}
derive_constraints
write_sdc {D:\libero_tests\DUMMY_GPIO_MSS\constraint\GPIOOOO_derived_constraints.sdc}
write_ndc {D:\libero_tests\DUMMY_GPIO_MSS\constraint\GPIOOOO_derived_constraints.ndc}
write_pdc {D:\libero_tests\DUMMY_GPIO_MSS\constraint\fp\GPIOOOO_derived_constraints.pdc}
