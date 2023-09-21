onerror {quit -f}
vlib work
vlog -work work shifterESQ.vo
vlog -work work shifterESQ.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.shifterESQ_vlg_vec_tst
vcd file -direction shifterESQ.msim.vcd
vcd add -internal shifterESQ_vlg_vec_tst/*
vcd add -internal shifterESQ_vlg_vec_tst/i1/*
add wave /*
run -all
