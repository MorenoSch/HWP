transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/moren/Desktop/ex06/Ultrasound_controller_restored/motor_controller.vhd}

vcom -93 -work work {C:/Users/moren/Desktop/ex06/Ultrasound_controller_restored/simulation/modelsim/motor_test.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  motor_test_vhd_tst

add wave *
view structure
view signals
run -all
