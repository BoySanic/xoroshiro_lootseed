onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib add_i64_i32_lut_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {add_i64_i32_lut.udo}

run 1000ns

quit -force
