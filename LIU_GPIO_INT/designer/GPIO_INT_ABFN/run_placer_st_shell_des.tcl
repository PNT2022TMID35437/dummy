set_device \
    -family  SmartFusion2 \
    -die     PA4M500 \
    -package vf400 \
    -speed   STD \
    -tempr   {IND} \
    -voltr   {IND}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name GPIO_INT_ABFN
set_workdir {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN}
set_log     {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\GPIO_INT_ABFN_sdc.log}
set_design_state pre_layout
