new_project \
         -name {DUMMY1} \
         -location {D:\libero_tests\DUMMY_2\designer\DUMMY1\DUMMY1_fp} \
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
