`timescale 1ns / 1ps
 
module test_bench;

// Inputs
reg clk;
reg [127:0] state;
reg [127:0] key;

// Outputs
wire [127:0] out;
always begin #10 clk = ~clk; end
// Instantiate the Unit Under Test (UUT)
//wire [127:0] o1;
//assign o1 [127:0] = out[127:0] ^ 128'h69d5c2eb2e2e624750541d3bbc692ba5;
aes_128 uut (
	.clk(clk), 
	.state(state), 
	.key(key), 
	.out(out)
);

initial begin
clk = 0;
state= 128'he382e4bfe020dde6a6c8bc63ed1f049c;
key= 128'h3cdba6b3993e0c871c0d5e24de47b706;
end
endmodule