// Code your design here
module Relational (A, B, Y1, Y2, Y3, Y4);
  input [2:0] A, B;
  output reg Y1, Y2, Y3, Y4;
  
  always @(A or B) begin
    Y1= A<B;
    Y2= A<=B;
    Y3= A>B;
    Y4= A>=B;
  end
  
endmodule

