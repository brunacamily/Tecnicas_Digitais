onerror {quit -f}
vlib work
vlog -work work exemplo3.vo
vlog -work work exemplo3.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.exemplo3_vlg_vec_tst
vcd file -direction exemplo3.msim.vcd
vcd add -internal exemplo3_vlg_vec_tst/*
vcd add -internal exemplo3_vlg_vec_tst/i1/*
add wave /*
run -all
