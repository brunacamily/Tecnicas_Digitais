onerror {quit -f}
vlib work
vlog -work work cont_process.vo
vlog -work work cont_process.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.cont_process_vlg_vec_tst
vcd file -direction cont_process.msim.vcd
vcd add -internal cont_process_vlg_vec_tst/*
vcd add -internal cont_process_vlg_vec_tst/i1/*
add wave /*
run -all
