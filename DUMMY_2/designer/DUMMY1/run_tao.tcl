set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\DUMMY_2\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3_muxptob3.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\DUMMY_2\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3_iaddr_reg.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {D:\libero_tests\DUMMY_2\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_2\component\work\CoreAPB3_C3\CoreAPB3_C3.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_2\component\work\CoreGPIO_C0\CoreGPIO_C0_0\rtl\vlog\core\coregpio.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_2\component\work\CoreGPIO_C0\CoreGPIO_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_2\component\work\DUMMY1_MSS\DUMMY1_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_2\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_2\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\DUMMY_2\component\work\DUMMY1\DUMMY1.v}
set_top_level {DUMMY1}
map_netlist
read_sdc {D:\libero_tests\DUMMY_2\constraint\DUMMY1_derived_constraints.sdc}
check_constraints {D:\libero_tests\DUMMY_2\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\DUMMY_2\designer\DUMMY1\synthesis.fdc}
