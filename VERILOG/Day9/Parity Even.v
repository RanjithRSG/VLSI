// Code your design here
module Parityeven(
  input a,b,c,
   output p
);
  
  wire x;
  
  xor (x,a,b);
  xor (p,x,c);
  
endmodule
