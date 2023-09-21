onerror {quit -f}
vlib work
vlog -work work xorSIMPLES.vo
vlog -work work xorSIMPLES.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.xorSIMPLES_vlg_vec_tst
vcd file -direction xorSIMPLES.msim.vcd
vcd add -internal xorSIMPLES_vlg_vec_tst/*
vcd add -internal xorSIMPLES_vlg_vec_tst/i1/*
add wave /*
run -all
