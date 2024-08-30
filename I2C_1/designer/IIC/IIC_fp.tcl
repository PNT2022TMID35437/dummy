new_project \
         -name {IIC} \
         -location {D:\libero_tests\I2C_1\designer\IIC\IIC_fp} \
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
