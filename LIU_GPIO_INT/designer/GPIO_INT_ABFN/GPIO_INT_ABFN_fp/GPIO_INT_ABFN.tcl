open_project -project {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\GPIO_INT_ABFN_fp\GPIO_INT_ABFN.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\GPIO_INT_ABFN.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
