set_device \
    -fam SmartFusion2 \
    -die PA4M500 \
    -pkg vf400
set_input_cfg \
	-path {D:/libero_tests/LIU_GPIO_INT/component/work/GPIO_INT_ABFN_sb_MSS/ENVM.cfg}
set_output_efc \
    -path {D:\libero_tests\LIU_GPIO_INT\designer\GPIO_INT_ABFN\GPIO_INT_ABFN.efc}
set_proj_dir \
    -path {D:\libero_tests\LIU_GPIO_INT}
set_is_relative_path \
    -value {FALSE}
set_root_path_dir \
    -path {}
gen_prg -use_init false
