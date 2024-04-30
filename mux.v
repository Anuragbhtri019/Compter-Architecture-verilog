module mux  (a,b,d0,d1,d2,d3,y);
input a,b,d0,d1,d2,d3;
output y;
assign s1=((~a)&(~b)&d0);
assign s2=((~a) & b & d1);
assign s3=(a &(~b) & d2);
assign s4=(a& b & d3);
assign y=(s1|s2|s3|s4) ;
endmodule
