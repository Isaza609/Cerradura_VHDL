onerror {exit -code 1}
vlib work
vlog -work work validacion.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.validacion_vlg_vec_tst -voptargs="+acc"
vcd file -direction validacion.msim.vcd
vcd add -internal validacion_vlg_vec_tst/*
vcd add -internal validacion_vlg_vec_tst/i1/*
run -all
quit -f
