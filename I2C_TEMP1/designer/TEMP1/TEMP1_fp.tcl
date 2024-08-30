new_project \
         -name {TEMP1} \
         -location {D:\libero_tests\I2C_TEMP1\designer\TEMP1\TEMP1_fp} \
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
