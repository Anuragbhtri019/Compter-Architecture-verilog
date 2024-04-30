`include "nor.v"
module nor_tb;
reg a,b;
wire c;
norgate  n1(a,b,c);
initial begin
    $dumpfile("nor_tb.vcd");
    $dumpvars(0,nor_tb);
     a=0 ;b=0;
    #10;
     a=0 ;b=1;
    #10;
     a=1 ;b=0;
    #10;
     a=1 ;b=1;
    #10;
    $finish;
end 
endmodule
