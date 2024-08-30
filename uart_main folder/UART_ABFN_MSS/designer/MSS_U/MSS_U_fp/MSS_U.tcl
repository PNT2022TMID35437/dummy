open_project -project {D:\libero_tests\uart_main folder\UART_ABFN_MSS\designer\MSS_U\MSS_U_fp\MSS_U.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\uart_main folder\UART_ABFN_MSS\designer\MSS_U\MSS_U.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
