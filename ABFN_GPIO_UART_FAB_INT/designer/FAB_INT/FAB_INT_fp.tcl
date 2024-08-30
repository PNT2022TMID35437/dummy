new_project \
         -name {FAB_INT} \
         -location {D:\libero_tests\ABFN_GPIO_UART_FAB_INT\designer\FAB_INT\FAB_INT_fp} \
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
