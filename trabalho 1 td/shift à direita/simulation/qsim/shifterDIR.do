onerror {quit -f}
vlib work
vlog -work work shifterDIR.vo
vlog -work work shifterDIR.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.shifterDIR_vlg_vec_tst
vcd file -direction shifterDIR.msim.vcd
vcd add -internal shifterDIR_vlg_vec_tst/*
vcd add -internal shifterDIR_vlg_vec_tst/i1/*
add wave /*
run -all
