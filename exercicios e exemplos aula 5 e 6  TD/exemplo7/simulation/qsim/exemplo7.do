onerror {quit -f}
vlib work
vlog -work work exemplo7.vo
vlog -work work exemplo7.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.exemplo7_vlg_vec_tst
vcd file -direction exemplo7.msim.vcd
vcd add -internal exemplo7_vlg_vec_tst/*
vcd add -internal exemplo7_vlg_vec_tst/i1/*
add wave /*
run -all
