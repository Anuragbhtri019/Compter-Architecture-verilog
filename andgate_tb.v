`include "andgate.v"
module andgate_tb;
    reg a, b;
    wire c;
    andgate a1(a,b,c);

    initial begin
        $dumpfile("andgate.vcd");
        $dumpvars(0, andgate_tb);
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
