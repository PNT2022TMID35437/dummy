open_project -project {D:\libero_tests\UART_ABFN_FAB\designer\FABRIC_UART\FABRIC_UART_fp\FABRIC_UART.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\UART_ABFN_FAB\designer\FABRIC_UART\FABRIC_UART.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
