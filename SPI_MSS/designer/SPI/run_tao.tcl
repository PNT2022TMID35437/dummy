set_device -family {SmartFusion2} -die {M2S005} -speed {STD}
read_verilog -mode system_verilog {D:\libero_tests\SPI_MSS\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\SPI_MSS\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\SPI_MSS\component\work\SPI_MSS\SPI_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\SPI_MSS\component\work\SPI\SPI.v}
set_top_level {SPI}
map_netlist
read_sdc {D:\libero_tests\SPI_MSS\constraint\SPI_derived_constraints.sdc}
check_constraints {D:\libero_tests\SPI_MSS\constraint\synthesis_sdc_errors.log}
write_fdc {D:\libero_tests\SPI_MSS\designer\SPI\synthesis.fdc}
