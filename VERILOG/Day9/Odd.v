// Code your design here
module odd(
  input [7:0]a
);
 
  always @(*) begin
  
    if(a%2==1)
      $display(a,"It is a odd number");
  else
    $display(a,"It is not odd number");
  
  end

endmodule
  
