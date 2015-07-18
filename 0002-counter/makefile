all: sim

and2: ct2bit.v ct2bittest.v
	iverilog -o ct2bit -s ct2bittest ct2bit.v ct2bittest.v

ct2bittest.vcd: ct2bit
	vvp ct2bit

sim: ct2bittest.vcd
	gtkwave ct2bittest.vcd

