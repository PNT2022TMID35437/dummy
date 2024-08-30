open_project -project {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c\MSS_sys_i2c_fp\MSS_sys_i2c.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\I2C_smart_build\designer\MSS_sys_i2c\MSS_sys_i2c.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
