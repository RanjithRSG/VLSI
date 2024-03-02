// Code your testbench here
// or browse Examples
module Factorial_tb;
  
  reg [7:0] N;
  wire [128:0] Y;
  
  Factorial uut(
    .N(N),
    .Y(Y)
  );
  
  initial begin
    
    N = $random;
    #10
    $finish;
    
  end
  
  always@(*)
    
    $monitor("N = %d  Y = %d",N,Y);
  
endmodule
