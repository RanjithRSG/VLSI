// Code your design here
module Equality(A, B, a,  b, Y1, Y2, Y3, Y4);
  input [3:0] A, B;
  input a, b;
  output reg Y1, Y2, Y3, Y4;
  
  always @* begin
    Y1= A === B;
    Y2= A !== B;
    Y3= a == b;
    Y4= a != b;
  end
  
endmodule
