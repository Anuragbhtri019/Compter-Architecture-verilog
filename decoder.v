module decoder(a2,a1,a0,y0,y1,y2,y3,y4,y5,y6,y7);
input a2,a1,a0;
output y0,y1,y2,y3,y4,y5,y6,y7;
assign y0=((~a2)&(~a1)&(~a0));
assign y1=((~a2)&(~a1)&(a0));
assign y2=((~a2)&(a1)&(~a0));
assign y3=((~a2)&(a1)&(a0));
assign y4=((a2)&(~a1)&(~a0));
assign y5=((a2)&(~a1)&(a0));
assign y6=((a2)&(a1)&(~a0));
assign y7=((a2)&(a1)&(a0));
endmodule