`include "mux.v"
module  mux_tb;
reg a,b,d0,d1,d2,d3;
wire y;
mux m1(a,b,d0,d1,d2,d3,y);

initial begin
     $dumpfile("mux_tb.vcd");
     $dumpvars(0,mux_tb);
    a=0;  b=0; d0=0 ; d1=1 ; d2=0 ; d3=1 ;
    #10
    a=0;  b=1; d0=0 ; d1=1 ; d2=0 ; d3=1 ;
    #10
    a=1;  b=0; d0=0 ; d1=1 ; d2=0 ; d3=1 ;
    #10
    a=1;  b=1; d0=0 ; d1=1 ; d2=0 ; d3=1 ; 
    #10
$finish;
end
endmodule