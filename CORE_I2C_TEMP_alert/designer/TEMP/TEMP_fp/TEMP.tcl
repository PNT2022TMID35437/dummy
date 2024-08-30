open_project -project {D:\libero_tests\CORE_I2C_TEMP - Copy\designer\TEMP\TEMP_fp\TEMP.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\CORE_I2C_TEMP - Copy\designer\TEMP\TEMP.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
