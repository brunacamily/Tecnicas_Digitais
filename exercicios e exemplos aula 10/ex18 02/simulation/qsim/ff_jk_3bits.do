onerror {quit -f}
vlib work
vlog -work work ff_jk_3bits.vo
vlog -work work ff_jk_3bits.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ff_jk_3bits_vlg_vec_tst
vcd file -direction ff_jk_3bits.msim.vcd
vcd add -internal ff_jk_3bits_vlg_vec_tst/*
vcd add -internal ff_jk_3bits_vlg_vec_tst/i1/*
add wave /*
run -all
