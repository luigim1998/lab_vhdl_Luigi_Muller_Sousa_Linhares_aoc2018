onerror {exit -code 1}
vlib work
vcom -work work laboratorio_VHDL_Luigi.vho
vcom -work work registrador_tipo_d.vwf.vht
vsim -novopt -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.registrador_tipo_d_vhd_vec_tst
vcd file -direction laboratorio_VHDL_Luigi.msim.vcd
vcd add -internal registrador_tipo_d_vhd_vec_tst/*
vcd add -internal registrador_tipo_d_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
