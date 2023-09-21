onerror {quit -f}
vlib work
vlog -work work exemplo15.vo
vlog -work work exemplo15.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.exemplo15_vlg_vec_tst
vcd file -direction exemplo15.msim.vcd
vcd add -internal exemplo15_vlg_vec_tst/*
vcd add -internal exemplo15_vlg_vec_tst/i1/*
add wave /*
run -all
