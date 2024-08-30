new_project \
         -name {SPI} \
         -location {D:\libero_tests\SPI_MSS\designer\SPI\SPI_fp} \
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
