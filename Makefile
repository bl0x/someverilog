all: sim

sim: tb.v
	verilator --cc -Wno-fatal --exe --trace --trace-structs --build --binary tb.v --top test
