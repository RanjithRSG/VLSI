// Code your design here
module Concatenation(
  input [1:0] A,
  input [2:0] B,
  input [3:0] C,
  output reg [7:0] y1, y2, y3
);
  
  assign y1 = {A, B};
  
  assign y2 = {A, C};
  
  assign y3 = {A, B, C};
  
endmodule
