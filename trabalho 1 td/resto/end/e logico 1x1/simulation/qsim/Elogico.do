onerror {quit -f}
vlib work
vlog -work work Elogico.vo
vlog -work work Elogico.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Elogico_vlg_vec_tst
vcd file -direction Elogico.msim.vcd
vcd add -internal Elogico_vlg_vec_tst/*
vcd add -internal Elogico_vlg_vec_tst/i1/*
add wave /*
run -all
