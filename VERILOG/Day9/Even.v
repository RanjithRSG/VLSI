// Code your design here
module even(
  input [7:0]a
);
  
  
  always @(*) begin
  
    if(a%2==0)
      $display(a," is a even number");
  else
    $display(a," is not even number");
  
  end

endmodule
