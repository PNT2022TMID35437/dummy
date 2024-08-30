new_project \
         -name {FABRIC_UART} \
         -location {D:\libero_tests\UART_ABFN_FAB\designer\FABRIC_UART\FABRIC_UART_fp} \
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
