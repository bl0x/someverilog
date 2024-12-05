module adder(
	input wire clk,
	input wire rst_n,
	input wire [2:0] in_a, in_b,
	output reg [2:0] out_c
);

always @(posedge clk or negedge rst_n)
	out_c <= in_a & in_b;

endmodule

