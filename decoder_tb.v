`include "decoder.v"
module decoder_tb;
reg a2,a1,a0;
wire y1,y2,y3,y4,y5,y6,y7;
decoder d1( a2,a1,a0,y0,y1,y2,y3,y4,y5,y6,y7);
initial begin
$dumpfile("decoder.vcd");
$dumpvars(0,decoder_tb);
a2=0;a1=0;a0=0;
#10;
a2=0;a1=0;a0=1;
#10;
a2=0;a1=1;a0=0;
#10;
a2=0;a1=1;a0=1;
#10;
a2=1;a1=0;a0=0;
#10;
a2=1;a1=0;a0=1;
#10;
a2=1;a1=1;a0=0;
#10;
a2=1;a1=1;a0=1;
#10;
$finish;
end
endmodule
