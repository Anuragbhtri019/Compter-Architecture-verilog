`include "fulladder.v"
module fulladder_tb;
reg a,b,cin;
wire sum,cout;
fulladder f1(a,b,cin,sum,cout);
initial begin
    $dumpfile("fulladder_tb.vcd");
    $dumpvars(0,fulladder_tb);
    a=0;b=0;cin=0;
 #10
  a=0;b=0;cin=1;
 #10
  a=0;b=1;cin=0;
 #10
  a=0;b=1;cin=1;
 #10
  a=1;b=0;cin=0;
 #10
  a=1;b=0;cin=1;
 #10
  a=1;b=1;cin=0;
 #10
  a=1;b=1;cin=1;
 #10
 $finish;
 end
 endmodule

