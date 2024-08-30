read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {D:/libero_tests/I2C_smart_build/designer/MSS_sys_i2c/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c\MSS_sys_i2c_layout_combinational_loops.xml}
report -type slack {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c\MSS_sys_i2c_place_and_route_constraint_coverage.xml}]
set reportfile {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp