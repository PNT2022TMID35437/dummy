open_project -project {D:\libero_tests\ABFN_GPIO_UART_FAB\designer\UART_GPIO_FAB_SB\UART_GPIO_FAB_SB_fp\UART_GPIO_FAB_SB.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\ABFN_GPIO_UART_FAB\designer\UART_GPIO_FAB_SB\UART_GPIO_FAB_SB.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
