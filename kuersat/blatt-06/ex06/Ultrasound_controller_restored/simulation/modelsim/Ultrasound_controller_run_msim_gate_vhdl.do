transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Ultrasound_controller_6_1200mv_85c_slow.vho}

vcom -93 -work work {/home/computer/Schreibtisch/aufg-05/ex06/Ultrasound_controller_restored/simulation/modelsim/motor_test.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Ultrasound_controller_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  motor_test_vhd_tst

add wave *
view structure
view signals
run -all
