new_project \
         -name {MSS_U} \
         -location {D:\libero_tests\UART_ABFN_MSS\designer\MSS_U\MSS_U_fp} \
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
