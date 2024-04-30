module halfadder(
    input a,
    input b,
    output sum,
    output carry);
    assign  sum = a ^ b; //xor  operation
    assign carry = a & b; //and operation
    endmodule 

