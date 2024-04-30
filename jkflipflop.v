
module jkflipflop (
  input j,
  input k,
  input c,
  output reg q,
  output wire qc
);

  always @(posedge c) begin
    if (j == 0 && k == 0)
      q <= q; // No change
     if (j == 0 && k == 1)
      q <= 0;
     if (j == 1 && k == 0)
      q <= j;
     if (j == 1 && k == 1)
      q <= ~q;
 
  end
   assign qc = ~q;


endmodule

// needs correction 

