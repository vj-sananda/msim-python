run: compile
	#The -lpython2.7 looks for /usr/lib/libpython2.7.so
	#vsim -c -ldflags "-L/usr/lib/python2.7/config -lpython2.7" -do "run -all" sv_code
	#Linking fails if we have libpython2.7.so.1.0, can reference that explicitly using -l: option
	#as shown below
	vsim -c -ldflags "-L/usr/lib/python2.7/config -l:libpython2.7.so.1.0" -do "run -all" sv_code

compile:
	vlib work
	vlog -ccflags "-I/usr/include/python2.7" sv_code.sv dpiC2Python.c

clean:
	rm -rf transcript work
