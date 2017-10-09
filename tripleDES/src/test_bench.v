module test_bench;
reg  decrypt;
reg  clk;
wire  [63:0] desIn;
wire  [63:0] keyIn;
wire [63:0] desOut;
reg [319:0] tmp;
always begin #10 clk = ~clk; end
wire [55:0] key1, key2, key3;
assign key1 =	{tmp[319:313],tmp[311:305],tmp[303:297],tmp[295:289],
			tmp[287:281],tmp[279:273],tmp[271:265],tmp[263:257]};
 
assign key2 =	{tmp[255:249],tmp[247:241],tmp[239:233],tmp[231:225],
			tmp[223:217],tmp[215:209],tmp[207:201],tmp[199:193]};
 
assign key3 =	{tmp[191:185],tmp[183:177],tmp[175:169],tmp[167:161],
			tmp[159:153],tmp[151:145],tmp[143:137],tmp[135:129]};
assign desIn = tmp[127:64];
des3 d(desOut, desIn, key1, key2, key3, decrypt, clk); 
initial begin
#0 decrypt = 1'b0;//0 == encrypt / 1 == decrypt
#0 clk = 0;

//           key1                key2             key3          Test data        Out data
#0	tmp=320'h0101010101010101_0101010101010101_0101010101010101_95F8A5E5DD31D900_8000000000000000;
end
endmodule
