set_device \
    -fam SmartFusion2 \
    -die PA4M500 \
    -pkg vf400
set_input_cfg \
	-path {D:/libero_tests/UART_ABFN_MSS/component/work/MSS_U_sb_MSS/ENVM.cfg}
set_output_efc \
    -path {D:\libero_tests\UART_ABFN_MSS\designer\MSS_U\MSS_U.efc}
set_proj_dir \
    -path {D:\libero_tests\UART_ABFN_MSS}
set_is_relative_path \
    -value {FALSE}
set_root_path_dir \
    -path {}
gen_prg -use_init false
