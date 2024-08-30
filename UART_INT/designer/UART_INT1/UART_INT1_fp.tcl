new_project \
         -name {UART_INT1} \
         -location {D:\libero_tests\UART_INT\designer\UART_INT1\UART_INT1_fp} \
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
