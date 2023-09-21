onerror {quit -f}
vlib work
vlog -work work muxPRINC.vo
vlog -work work muxPRINC.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.muxPRINC_vlg_vec_tst
vcd file -direction muxPRINC.msim.vcd
vcd add -internal muxPRINC_vlg_vec_tst/*
vcd add -internal muxPRINC_vlg_vec_tst/i1/*
add wave /*
run -all
