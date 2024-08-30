open_project -project {D:\libero_tests\DUMMY_2\designer\DUMMY1\DUMMY1_fp\DUMMY1.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\DUMMY_2\designer\DUMMY1\DUMMY1.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
