set_device \
    -fam SmartFusion2 \
    -die PA4M500 \
    -pkg vf400
set_input_cfg \
	-path {D:/libero_tests/UART_INT/component/work/UART_INT1_sb_MSS/ENVM.cfg}
set_output_efc \
    -path {D:\libero_tests\UART_INT\designer\UART_INT1\UART_INT1.efc}
set_proj_dir \
    -path {D:\libero_tests\UART_INT}
set_is_relative_path \
    -value {FALSE}
set_root_path_dir \
    -path {}
gen_prg -use_init false
