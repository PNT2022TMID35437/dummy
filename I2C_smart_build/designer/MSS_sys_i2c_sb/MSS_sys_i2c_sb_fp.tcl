new_project \
         -name {MSS_sys_i2c_sb} \
         -location {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c_sb\MSS_sys_i2c_sb_fp} \
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
