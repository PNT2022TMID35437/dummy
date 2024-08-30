new_project \
         -name {GPIOOOO} \
         -location {D:\libero_tests\DUMMY_GPIO_MSS\designer\GPIOOOO\GPIOOOO_fp} \
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
