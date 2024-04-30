`include "nand.v"
module nand_tb;
    reg a, b;
    wire c;
    nandgate a1(a,b,c);

    initial begin
        $dumpfile("nandgate.vcd");
        $dumpvars(0, nand_tb);
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
