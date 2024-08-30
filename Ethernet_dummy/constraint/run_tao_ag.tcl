set_device -family {SmartFusion2} -die {M2S005} -speed {STD} -range {IND}
read_verilog -mode system_verilog {D:\libero_tests\Ethernet_dummy\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\Ethernet_dummy\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\Ethernet_dummy\component\work\eth_dummy_MSS\eth_dummy_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\Ethernet_dummy\component\work\eth_dummy\eth_dummy.v}
set_top_level {eth_dummy}
read_sdc -component {D:\libero_tests\Ethernet_dummy\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.sdc}
derive_constraints
write_sdc {D:\libero_tests\Ethernet_dummy\constraint\eth_dummy_derived_constraints.sdc}
write_ndc {D:\libero_tests\Ethernet_dummy\constraint\eth_dummy_derived_constraints.ndc}
write_pdc {D:\libero_tests\Ethernet_dummy\constraint\fp\eth_dummy_derived_constraints.pdc}
