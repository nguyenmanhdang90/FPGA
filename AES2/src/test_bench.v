`include "timescale.v"
module test_bench;

reg  clk,reset,load_i,decrypt_i;
reg [127:0] data_i;
reg [127:0] key_i;
wire ready_o;
wire [127:0] data_o;


always begin #10 clk = ~clk; end
aes u(clk,reset,load_i,decrypt_i,data_i,key_i,ready_o,data_o);
initial begin
#0 decrypt_i = 1'b1;
#0 load_i = 1'b1;
#0 clk = 0;
reset = 0;
#1 reset = 1;
data_i = 128'he382e4bfe020dde6a6c8bc63ed1f049c;
key_i = 128'h3cdba6b3993e0c871c0d5e24de47b706;


end
endmodule
