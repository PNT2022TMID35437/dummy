quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "D:/libero_tests/ABFN_UART"
source "${PROJECT_DIR}/simulation/CM3_compile_bfm.tcl";


if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap SmartFusion2 "C:/Microchip/Libero_SoC_v2024.1/Designer/lib/modelsimpro/precompiled/vlog/smartfusion2"

vlog -sv -work presynth "${PROJECT_DIR}/component/work/OSC_C0/OSC_C0_0/OSC_C0_OSC_C0_0_OSC.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/OSC_C0/OSC_C0.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/UART_MSS/UART_MSS.v"
vlog -sv -work presynth "${PROJECT_DIR}/component/work/UART_ABFN/UART_ABFN.v"

vsim -L SmartFusion2 -L presynth  -t 1fs presynth.UART_ABFN
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
