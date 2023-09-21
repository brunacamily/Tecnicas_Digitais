onerror {quit -f}
vlib work
vlog -work work aula9_exemplo16.vo
vlog -work work aula9_exemplo16.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.aula9_exemplo16_vlg_vec_tst
vcd file -direction aula9_exemplo16.msim.vcd
vcd add -internal aula9_exemplo16_vlg_vec_tst/*
vcd add -internal aula9_exemplo16_vlg_vec_tst/i1/*
add wave /*
run -all
