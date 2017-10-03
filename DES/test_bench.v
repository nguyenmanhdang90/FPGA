module test_bench;
reg  decrypt;
reg  clk;
reg  [0:63] desIn,key;
wire [0:63] desOut;
always begin #10 clk = ~clk; end
des d(desOut, desIn, key, decrypt, clk);
initial begin
decrypt = 1'b0;
clk = 0;
desIn[0:63] = 64'h0123456789ABCDEF;
key[0:63]=64'h133457799BBCDFF1;
//Right[0:31] = 32'b11110000101010101111000010101010;
//Key[0:47] = 48'b000110110000001011101111111111000111000001110010;  
end
endmodule
