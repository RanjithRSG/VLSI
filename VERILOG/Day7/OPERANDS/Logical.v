// Code your design here
module Logical(
  input A, B,
  output y1, y2, y3, y4
);
  
  assign y1 = A && B;
  assign y2 = A || B;
  assign y3 = !A;
  assign y4 = !B;
  
endmodule
