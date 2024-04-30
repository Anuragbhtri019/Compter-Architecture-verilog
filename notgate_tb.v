`include "notgate.v"
module notgate_tb;
reg a;
wire c;
not a1(c,a);
initial begin 
    $dumpfile("notgate_tb.vcd");
    $dumpvars(0,notgate_tb);
    a=0;  #10
     a=1; #10
    $finish;
    end
    endmodule