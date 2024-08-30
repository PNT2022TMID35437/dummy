new_project \
         -name {GPIO_INT_ABFN} \
         -location {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\GPIO_INT_ABFN_fp} \
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
