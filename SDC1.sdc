derive_clock_uncertainty
create_clock -period 50MHz -name {Clock50MHz} [get_ports {Clock50MHz}]
create_clock -period 1MHz -name {ReadClock} [get_ports {ReadClock}]
set_clock_groups -exclusive -group {Clock50MHz} -group {ReadClock}
create_generated_clock -invert -name {WriteClock} -divide_by 5 -source [get_ports {Clock50MHz}] [get_registers {WriteClock}]

set_false_path -from [get_clocks {Clock50MHz}] -to [get_ports {nCS*}]
