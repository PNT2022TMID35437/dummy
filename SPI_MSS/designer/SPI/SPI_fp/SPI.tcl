open_project -project {D:\libero_tests\SPI_MSS\designer\SPI\SPI_fp\SPI.pro}
enable_device -name {M2S005} -enable 1
set_programming_file -name {M2S005} -file {D:\libero_tests\SPI_MSS\designer\SPI\SPI.ppd}
set_programming_action -action {PROGRAM} -name {M2S005} 
run_selected_actions
save_project
close_project
