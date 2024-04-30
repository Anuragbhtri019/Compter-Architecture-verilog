`include "xor.v"
module xor_tb;
    reg a, b;
    wire c;
    xorgate x1(a,b,c);

    initial begin
        $dumpfile("xorgate.vcd");
        $dumpvars(0, xor_tb);
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
