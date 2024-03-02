// Code your design here
module Even(
  input [7:0] A
);
  
  
  always @(*) begin
  
    if(A %2 == 0)
      $display(A," is a even number");
  
    else
      $display(A," is not even number");
  
  end

endmodule
