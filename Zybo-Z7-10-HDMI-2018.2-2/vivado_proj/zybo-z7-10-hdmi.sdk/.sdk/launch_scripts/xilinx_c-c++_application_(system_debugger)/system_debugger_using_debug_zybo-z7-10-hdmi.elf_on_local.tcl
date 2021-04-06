connect -url tcp:127.0.0.1:3121
source C:/Users/Thomas/Documents/GitHub/TicTacToe/Zybo-Z7-10-HDMI-2018.2-2/vivado_proj/zybo-z7-10-hdmi.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351AB7374A"} -index 0
loadhw -hw C:/Users/Thomas/Documents/GitHub/TicTacToe/Zybo-Z7-10-HDMI-2018.2-2/vivado_proj/zybo-z7-10-hdmi.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351AB7374A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351AB7374A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351AB7374A"} -index 0
dow C:/Users/Thomas/Documents/GitHub/TicTacToe/Zybo-Z7-10-HDMI-2018.2-2/vivado_proj/zybo-z7-10-hdmi.sdk/Zybo-Z7-10-HDMI/Debug/Zybo-Z7-10-HDMI.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351AB7374A"} -index 0
con
