// Code your testbench here
// or browse Examples
module Odd_tb;
  
  reg [7:0] A;
  
  Odd uut(
    .A(A)
  );
  
  initial begin
  
    repeat(8)
    
    #15
    A=$random;
    #15
    $finish;
  
  end
  
  always@(*)
    
    $monitor("A=%d",A);

endmodule
