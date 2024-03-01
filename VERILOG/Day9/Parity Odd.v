// Code your design here
module Parityodd(
  input a,b,c,
   output p
);
  
  wire x;
  
  xor (x,b,c);
  xor (p,x,a);
  
endmodule
