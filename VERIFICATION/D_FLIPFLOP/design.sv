// Code your design here
module Dff(
  input clk,
  input reset, 
  input D,
  output reg Q
);
  
  always@ (posedge clk or posedge reset )
    begin
      if (reset)
        Q <= 1'b0;
      else
        Q <= D;
    end
  
endmodule
