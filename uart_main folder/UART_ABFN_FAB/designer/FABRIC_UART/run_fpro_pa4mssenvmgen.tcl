set_device \
    -fam SmartFusion2 \
    -die PA4M500 \
    -pkg vf400
set_input_cfg \
	-path {D:/libero_tests/UART_ABFN_FAB/component/work/FABRIC_UART_sb_MSS/ENVM.cfg}
set_output_efc \
    -path {D:\libero_tests\UART_ABFN_FAB\designer\FABRIC_UART\FABRIC_UART.efc}
set_proj_dir \
    -path {D:\libero_tests\UART_ABFN_FAB}
set_is_relative_path \
    -value {FALSE}
set_root_path_dir \
    -path {}
gen_prg -use_init false
