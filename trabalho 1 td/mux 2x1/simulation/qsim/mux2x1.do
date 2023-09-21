onerror {quit -f}
vlib work
vlog -work work mux2x1.vo
vlog -work work mux2x1.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux2x1_vlg_vec_tst
vcd file -direction mux2x1.msim.vcd
vcd add -internal mux2x1_vlg_vec_tst/*
vcd add -internal mux2x1_vlg_vec_tst/i1/*
add wave /*
run -all
