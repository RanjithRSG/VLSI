// Code your design here
module downcounter(
  input clk, reset,
  output reg [3:0] out
);
  
  always @(posedge clk or posedge reset) begin
    
    if(reset)
      out <= 4'b1111;
    
    else 
      out <= out - 1;
    
  end
  
endmodule 

