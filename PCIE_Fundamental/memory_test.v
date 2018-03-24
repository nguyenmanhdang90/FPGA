module memory_test(in,clk,address_in,out);
input [63:0] in;
input clk;
input [13:0] address_in;
output out;
assign out =(in[63:0] == 63'h44_44_44_44_44_44_44_44)?1'b1:1'b0;
endmodule

