onerror {quit -f}
vlib work
vlog -work work flip_flop_D.vo
vlog -work work flip_flop_D.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.flip_flop_D_vlg_vec_tst
vcd file -direction flip_flop_D.msim.vcd
vcd add -internal flip_flop_D_vlg_vec_tst/*
vcd add -internal flip_flop_D_vlg_vec_tst/i1/*
add wave /*
run -all
