new_project \
         -name {ABFN_UART_GPIO_INT_MSS} \
         -location {D:\libero_tests\ABFN_UART_GPIO_MSS_int\designer\ABFN_UART_GPIO_INT_MSS\ABFN_UART_GPIO_INT_MSS_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S005} \
         -name {M2S005}
enable_device \
         -name {M2S005} \
         -enable {TRUE}
save_project
close_project
