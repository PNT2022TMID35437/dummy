read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {D:/libero_tests/LIU_GPIO_INT/designer/GPIO_INT_ABFN/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\GPIO_INT_ABFN_layout_combinational_loops.xml}
report -type slack {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\GPIO_INT_ABFN_place_and_route_constraint_coverage.xml}]
set reportfile {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp