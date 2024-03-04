// Code your design here
module decadecounter
  # (parameter N = 4)
  (
  input clk, reset,
    output reg [N-1:0] out
  );
  
  always @(posedge clk or posedge reset) begin
    
    if (reset)
      out <= 4'h0;
    
    else if (out == 4'h9)
      out <= 4'h0;
    
    else
      out <= out + 1;
    
  end 
  
endmodule
