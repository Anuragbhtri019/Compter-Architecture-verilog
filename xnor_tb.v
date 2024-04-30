`include "xnor.v"
module xnor_tb;
    reg a, b;
    wire c;
    xnorgate x1(a,b,c);

    initial begin
        $dumpfile("xnorgate.vcd");
        $dumpvars(0, xnor_tb);
        a = 0; b = 0;
        #10;
        a = 0; b = 1;
        #10;
        a = 1; b = 0;
        #10;
        a = 1; b = 1;
        #10;
        $finish;
    end
endmodule
