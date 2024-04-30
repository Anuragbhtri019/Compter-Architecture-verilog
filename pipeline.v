
//pipeline 
module pipe(a,b,c,d,clk,f);

parameter N=10;

input [N-1:0]a,b,c,d;

input clk;

output [N-1:0]f;

reg[N-1:0]l12_x1,l12_x2,l12_d,l23_x3,l23_d,l34_f;

wire L12_x1;

assign f=l34_f;

//first stage of pipeline

always @(posedge clk)

begin

    l12_x1<=#4 a+b;

    l12_x2<=#4 c-d;

    l12_d<=d;

end

//2nd stage of pipeline

always @(posedge clk)

begin

    l23_x3<= #4 l12_x1+l12_x2;

    l23_d<=l12_d;

end

//3rd stage of pipeline

always@(posedge clk)

begin

    l34_f<= #6 l23_x3*l23_d;

end

endmodule

//testbench

module pipe_test();

parameter N=10;

wire [N-1:0]f;

reg [N-1:0]a,b,c,d;

reg clk;

pipe callpipe(.a(a),.b(b),.c(c),.d(d),.f(f),.clk(clk));

initial clk=0;

always #10 clk=~clk;

initial begin

    #5 a=10; b=12; c=6; d=2;

    #20 a=10; b=10; c=5; d=3;

    #20 a=20; b=11; c=1; d=4;

    #20 a=12; b=15; c=4; d=2;

end

initial begin

    $dumpfile("pipeline.vcd");

    $dumpvars(0,pipe_test);
    #300 
    $finish();

end

endmodule

​






