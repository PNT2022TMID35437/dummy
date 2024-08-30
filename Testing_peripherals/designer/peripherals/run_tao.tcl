set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb\CCC_0\peripherals_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb\FABOSC_0\peripherals_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb_MSS\peripherals_sb_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\work\peripherals_sb\peripherals_sb.v}
read_verilog -mode system_verilog {D:\libero_tests\Testing_peripherals\component\work\peripherals\peripherals.v}
set_top_level {peripherals}
map_netlist
read_sdc {D:\libero_tests\Testing_peripherals\constraint\peripherals_derived_constraints.sdc}
check_constraints {D:\libero_tests\Testing_peripherals\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\Testing_peripherals\designer\peripherals\synthesis.fdc}
