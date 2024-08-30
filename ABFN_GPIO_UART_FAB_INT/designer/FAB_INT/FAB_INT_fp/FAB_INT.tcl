open_project -project {D:\libero_tests\ABFN_GPIO_UART_FAB_INT\designer\FAB_INT\FAB_INT_fp\FAB_INT.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\ABFN_GPIO_UART_FAB_INT\designer\FAB_INT\FAB_INT.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
