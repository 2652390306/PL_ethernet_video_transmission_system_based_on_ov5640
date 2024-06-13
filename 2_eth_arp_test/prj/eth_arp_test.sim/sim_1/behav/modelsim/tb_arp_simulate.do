######################################################################
#
# File name : tb_arp_simulate.do
# Created on: Sun Jun 25 16:10:44 +0800 2023
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.tb_arp xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {tb_arp_wave.do}

view wave
view structure
view signals

do {tb_arp.udo}

run 1000ns
