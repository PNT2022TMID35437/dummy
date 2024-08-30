set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog {D:\libero_tests\Ethernet_dummy\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\Ethernet_dummy\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\Ethernet_dummy\component\work\eth_dummy_MSS\eth_dummy_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\Ethernet_dummy\component\work\eth_dummy\eth_dummy.v}
set_top_level {eth_dummy}
map_netlist
read_sdc {D:\libero_tests\Ethernet_dummy\constraint\eth_dummy_derived_constraints.sdc}
check_constraints {D:\libero_tests\Ethernet_dummy\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\Ethernet_dummy\designer\eth_dummy\synthesis.fdc}
