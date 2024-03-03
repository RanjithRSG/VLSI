// Code your design here
module LFSR(
  input clk, rst,
  output reg [3:0] Y
);

  always@(*) begin
    
    if(rst)
      Y <= 4'ha;
    
    else 
      Y = {Y[2:0],(Y[3]^Y[2])};
  end
  
endmodule
