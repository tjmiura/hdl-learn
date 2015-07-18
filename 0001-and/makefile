all: sim

and2: and2.v and2test.v
	iverilog -o and2 -s AND2TEST and2.v and2test.v

and2.vcd: and2
	vvp and2

sim: and2test.vcd
	gtkwave and2test.vcd

