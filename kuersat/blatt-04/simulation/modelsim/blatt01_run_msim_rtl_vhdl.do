transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.0/blatt01/zweibitmultiplexer.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.0/blatt01/simulation/modelsim/carry_ripple.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  carry_ripple_vhd_tst

add wave *
view structure
view signals
run -all
