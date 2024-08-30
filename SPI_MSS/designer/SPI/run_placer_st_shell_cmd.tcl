read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {D:/libero_tests/SPI_MSS/designer/SPI/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {D:\libero_tests\SPI_MSS\designer\SPI\SPI_layout_combinational_loops.xml}
report -type slack {D:\libero_tests\SPI_MSS\designer\SPI\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {D:\libero_tests\SPI_MSS\designer\SPI\SPI_place_and_route_constraint_coverage.xml}]
set reportfile {D:\libero_tests\SPI_MSS\designer\SPI\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp