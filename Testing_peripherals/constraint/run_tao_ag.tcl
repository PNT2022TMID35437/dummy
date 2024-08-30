set_device -family {SmartFusion2} -die {M2S005} -speed {STD} -range {IND}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb\CCC_0\peripherals_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb\FABOSC_0\peripherals_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb_MSS\peripherals_sb_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb\peripherals_sb.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\work\peripherals\peripherals.v}
set_top_level {peripherals}
read_sdc -component {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb\CCC_0\peripherals_sb_CCC_0_FCCC.sdc}
read_sdc -component {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb\FABOSC_0\peripherals_sb_FABOSC_0_OSC.sdc}
read_sdc -component {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb_MSS\peripherals_sb_MSS.sdc}
derive_constraints
write_sdc {D:\libero_tests\Testing_peripherals\constraint\peripherals_derived_constraints.sdc}
write_ndc {D:\libero_tests\Testing_peripherals\constraint\peripherals_derived_constraints.ndc}
write_pdc {D:\libero_tests\Testing_peripherals\constraint\fp\peripherals_derived_constraints.pdc}
