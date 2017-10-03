module test_bench;
reg  decrypt;
reg  clk;
reg  [63:0] desIn;
reg  [55:0] key;
wire [63:0] desOut;
reg [191:0] tmp;
always begin #10 clk = ~clk; end
des d(desOut, desIn, key, decrypt, clk);
initial begin
decrypt = 1'b0;
clk = 0;
desIn[63:0] = 64'h0000000000000000;
tmp =  192'h10316E028C8F3B4A_0000000000000000_82DCBAFBDEAB6602;
key[55:0]= {tmp[191:185],tmp[183:177],tmp[175:169],tmp[167:161],
			tmp[159:153],tmp[151:145],tmp[143:137],tmp[135:129]};
//Right[0:31] = 32'b11110000101010101111000010101010;
//Key[0:47] = 48'b000110110000001011101111111111000111000001110010;  
end
endmodule
