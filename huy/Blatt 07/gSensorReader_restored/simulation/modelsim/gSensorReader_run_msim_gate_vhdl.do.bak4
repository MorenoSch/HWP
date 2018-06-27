transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {gSensorReader_6_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/Quoc-Huy/Documents/GitHub/HWP/huy/Blatt 07/gSensorReader_restored/simulation/modelsim/g_reader.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=gSensorReader_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  g_reader_vhd_tst

add wave *
view structure
view signals
run 1 sec
