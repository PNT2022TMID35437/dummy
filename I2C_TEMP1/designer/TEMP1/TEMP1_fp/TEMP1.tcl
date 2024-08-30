open_project -project {D:\libero_tests\I2C_TEMP1\designer\TEMP1\TEMP1_fp\TEMP1.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\I2C_TEMP1\designer\TEMP1\TEMP1.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
