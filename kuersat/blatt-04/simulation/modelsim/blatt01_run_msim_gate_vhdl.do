transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {blatt01_6_1200mv_85c_slow.vho}

vcom -93 -work work {/home/computer/Arduino/git/HWP/kuersat/blatt-04/simulation/modelsim/conditionalSum.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=blatt01_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  conditionalSum_vhd_tst

add wave *
view structure
view signals
run -all
