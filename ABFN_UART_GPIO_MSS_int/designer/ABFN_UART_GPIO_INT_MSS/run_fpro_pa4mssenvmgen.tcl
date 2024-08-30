set_device \
    -fam SmartFusion2 \
    -die PA4M500 \
    -pkg vf400
set_input_cfg \
	-path {D:/libero_tests/ABFN_UART_GPIO_MSS_int/component/work/ABFN_UART_GPIO_INT_MSS_sb_MSS/ENVM.cfg}
set_output_efc \
    -path {D:\libero_tests\ABFN_UART_GPIO_MSS_int\designer\ABFN_UART_GPIO_INT_MSS\ABFN_UART_GPIO_INT_MSS.efc}
set_proj_dir \
    -path {D:\libero_tests\ABFN_UART_GPIO_MSS_int}
set_is_relative_path \
    -value {FALSE}
set_root_path_dir \
    -path {}
gen_prg -use_init false
