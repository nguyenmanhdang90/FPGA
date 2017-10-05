module test_bench;
reg  decrypt;
reg  clk;
reg  [63:0] desIn;
reg  [63:0] keyIn;
wire [63:0] desOut;
reg [191:0] tmp;
always begin #10 clk = ~clk; end
des d(desOut, desIn, keyIn, decrypt, clk);
initial begin
//______________key________________data_____________result_____
tmp =  192'h10316E028C8F3B4A_0000000000000000_82DCBAFBDEAB6602;
decrypt = 1'b0;//1 == encrypt / 0 == decrype
clk = 0;
desIn[63:0] = 64'h0000000000000000;
keyIn[63:0]= {tmp[191:129]}; 
end
endmodule
