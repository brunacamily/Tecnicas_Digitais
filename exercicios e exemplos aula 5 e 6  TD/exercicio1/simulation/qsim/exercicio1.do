onerror {quit -f}
vlib work
vlog -work work exercicio1.vo
vlog -work work exercicio1.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.exercicio1_vlg_vec_tst
vcd file -direction exercicio1.msim.vcd
vcd add -internal exercicio1_vlg_vec_tst/*
vcd add -internal exercicio1_vlg_vec_tst/i1/*
add wave /*
run -all
