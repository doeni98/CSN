onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand /console_sim/UUT/com_i
add wave -noupdate /console_sim/UUT/max_i
add wave -noupdate /console_sim/UUT/min_i
add wave -noupdate /console_sim/UUT/osc_i
add wave -noupdate /console_sim/UUT/val_i
add wave -noupdate /console_sim/UUT/leds_o
add wave -noupdate /console_sim/UUT/lin_max_s
add wave -noupdate /console_sim/UUT/lin_min_s
add wave -noupdate /console_sim/UUT/lin_val_s
add wave -noupdate /console_sim/UUT/val_normale_s
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {28 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 340
configure wave -valuecolwidth 149
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1022 ns}
