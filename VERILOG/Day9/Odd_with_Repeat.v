// Code your design here
module Odd(
  input [7:0] A
);
  always @(*) begin
    
    if(A %2 == 1)
      $display(A," is a odd number");
  
    else
      $display(A," is not odd number");
  
  end

endmodule
