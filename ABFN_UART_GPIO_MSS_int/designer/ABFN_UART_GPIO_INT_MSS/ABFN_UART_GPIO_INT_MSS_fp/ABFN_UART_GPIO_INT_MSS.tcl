open_project -project {D:\libero_tests\ABFN_UART_GPIO_MSS_int\designer\ABFN_UART_GPIO_INT_MSS\ABFN_UART_GPIO_INT_MSS_fp\ABFN_UART_GPIO_INT_MSS.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\ABFN_UART_GPIO_MSS_int\designer\ABFN_UART_GPIO_INT_MSS\ABFN_UART_GPIO_INT_MSS.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
