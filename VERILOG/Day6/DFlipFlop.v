// Code your design here
module DFlipFlop(D,clk,reset,Q);
  input D;
  input clk;
  input reset;
  output  reg Q;
  
  always @(posedge clk)
    begin
      Q <= D; 
  end
  
endmodule 
