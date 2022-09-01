compile:
	vlog -ccflags "-I/usr/include/python2.6" sv_code.sv dpiC2Python.c

run:
	vsim -c -ldflags "-L/usr/lib/python2.6/config -lpython2.6" -do "run -all" sv_code
