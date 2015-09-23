all: sim1 sim2 sim3

knight1.vvp: knight1.v knight1test.v
	iverilog -o knight1.vvp -s knight1test knight1.v knight1test.v

knight1test.vcd: knight1.vvp
	vvp knight1.vvp

sim1: knight1test.vcd
	gtkwave knight1test.vcd

knight2.vvp: knight2.v knight2test.v
	iverilog -o knight2.vvp -s knight2test knight2.v knight2test.v

knight2test.vcd: knight2.vvp
	vvp knight2.vvp

sim2: knight2test.vcd
	gtkwave knight2test.vcd

knight3.vvp: knight3.v knight3test.v
	iverilog -o knight3.vvp -s knight3test knight3.v knight3test.v

knight3test.vcd: knight3.vvp
	vvp knight3.vvp

sim3: knight3test.vcd
	gtkwave knight3test.vcd

knight4.vvp: knight4.v knight4test.v
	iverilog -o knight4.vvp -s knight4test knight4.v knight4test.v

knight4test.vcd: knight4.vvp
	vvp knight4.vvp

sim4: knight4test.vcd
	gtkwave knight4test.vcd

knight5.vvp: knight5.v knight5test.v
	iverilog -o knight5.vvp -s knight5test knight5.v knight5test.v

knight5test.vcd: knight5.vvp
	vvp knight5.vvp

sim5: knight5test.vcd
	gtkwave knight5test.vcd

