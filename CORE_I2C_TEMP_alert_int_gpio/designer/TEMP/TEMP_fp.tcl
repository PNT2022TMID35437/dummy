new_project \
         -name {TEMP} \
         -location {D:\libero_tests\CORE_I2C_TEMP\designer\TEMP\TEMP_fp} \
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
