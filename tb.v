`timescale 1ns / 1ps

module test ();

reg rst, clk;
reg [2:0] a, b;
wire [2:0] sum;

adder uut (.in_a(a),.in_b(b),.out_c(sum),.clk(clk),.rst_n(rst));

initial begin
	rst = 0;
end

initial begin
	$dumpfile("test.vcd");
	$dumpvars;
end

initial begin
	clk = 0;
	forever begin
		#10 clk = ~clk;
	end
end

initial begin
	$display("Hello world");
end

initial begin
	#500 $stop;
end

endmodule
