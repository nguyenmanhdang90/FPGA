module test_bench;
reg  decrypt;
reg  clk;
wire  [63:0] desIn;
wire  [63:0] keyIn;
wire [63:0] desOut;
reg [191:0] tmp;
always begin #10 clk = ~clk; end
assign keyIn[63:0]= {tmp[191:129]};
assign desIn[63:0]=  {tmp[127:64]};
des d(desOut, desIn, keyIn, decrypt, clk);
initial begin
#0 decrypt = 1'b0;//1 == encrypt / 0 == decrypt
#0 clk = 0;

//__________________key________________data_____________result_____
#0   tmp = 192'h10316E028C8F3B4A_0000000000000000_82DCBAFBDEAB6602;
#340 tmp = 192'h0101010101010101_95F8A5E5DD31D900_8000000000000000;
#340 tmp = 192'h0101010101010101_DD7F121CA5015619_4000000000000000;
#340 tmp = 192'h0101010101010101_2E8653104F3834EA_2000000000000000;
#340 tmp = 192'h0101010101010101_4BD388FF6CD81D4F_1000000000000000;
end
endmodule
