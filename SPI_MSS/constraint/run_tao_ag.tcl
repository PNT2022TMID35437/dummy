set_device -family {SmartFusion2} -die {M2S005} -speed {STD} -range {IND}
read_verilog -mode system_verilog {D:\libero_tests\SPI_MSS\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.v}
read_verilog -mode system_verilog {D:\libero_tests\SPI_MSS\component\work\OSC_C0\OSC_C0.v}
read_verilog -mode system_verilog {D:\libero_tests\SPI_MSS\component\work\SPI_MSS\SPI_MSS.v}
read_verilog -mode system_verilog {D:\libero_tests\SPI_MSS\component\work\SPI\SPI.v}
set_top_level {SPI}
read_sdc -component {D:\libero_tests\SPI_MSS\component\work\OSC_C0\OSC_C0_0\OSC_C0_OSC_C0_0_OSC.sdc}
derive_constraints
write_sdc {D:\libero_tests\SPI_MSS\constraint\SPI_derived_constraints.sdc}
write_ndc {D:\libero_tests\SPI_MSS\constraint\SPI_derived_constraints.ndc}
write_pdc {D:\libero_tests\SPI_MSS\constraint\fp\SPI_derived_constraints.pdc}
