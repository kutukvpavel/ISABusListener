onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /DiamantISAListener_vlg_tst/Clock50MHz
add wave -noupdate /DiamantISAListener_vlg_tst/ReadClock
add wave -noupdate /DiamantISAListener_vlg_tst/Reset
add wave -noupdate -radix hexadecimal /DiamantISAListener_vlg_tst/SA
add wave -noupdate /DiamantISAListener_vlg_tst/nCS
add wave -noupdate -radix hexadecimal /DiamantISAListener_vlg_tst/DataOut
add wave -noupdate /DiamantISAListener_vlg_tst/Ready
add wave -noupdate -radix unsigned /DiamantISAListener_vlg_tst/i1/MachineState
add wave -noupdate -radix unsigned /DiamantISAListener_vlg_tst/i1/ReadAddr
add wave -noupdate -radix unsigned /DiamantISAListener_vlg_tst/i1/WriteAddr
add wave -noupdate -radix hexadecimal /DiamantISAListener_vlg_tst/i1/ResetMask
add wave -noupdate /DiamantISAListener_vlg_tst/i1/ReadClockProxy
add wave -noupdate /DiamantISAListener_vlg_tst/i1/WriteClock
add wave -noupdate -radix hexadecimal /DiamantISAListener_vlg_tst/i1/InputData
add wave -noupdate /DiamantISAListener_vlg_tst/cycles
add wave -noupdate /DiamantISAListener_vlg_tst/i1/ReadClockCompensationPulse
add wave -noupdate /DiamantISAListener_vlg_tst/i1/AddressLimitReached
add wave -noupdate /DiamantISAListener_vlg_tst/i1/Idle
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 3} {860259285 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 286
configure wave -valuecolwidth 100
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
configure wave -timelineunits us
update
WaveRestoreZoom {860142217 ps} {860666505 ps}
