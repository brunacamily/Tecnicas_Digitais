onerror {quit -f}
vlib work
vlog -work work meiosomador.vo
vlog -work work meiosomador.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.meiosomador_vlg_vec_tst
vcd file -direction meiosomador.msim.vcd
vcd add -internal meiosomador_vlg_vec_tst/*
vcd add -internal meiosomador_vlg_vec_tst/i1/*
add wave /*
run -all
