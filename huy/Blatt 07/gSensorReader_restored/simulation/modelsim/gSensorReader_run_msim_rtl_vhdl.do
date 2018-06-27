transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Quoc-Huy/Documents/GitHub/HWP/huy/Blatt 07/gSensorReader_restored/g_reader.vhd}

vcom -93 -work work {C:/Users/Quoc-Huy/Documents/GitHub/HWP/huy/Blatt 07/gSensorReader_restored/simulation/modelsim/g_reader.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  g_reader_vhd_tst

add wave *
view structure
view signals
run 1 sec
