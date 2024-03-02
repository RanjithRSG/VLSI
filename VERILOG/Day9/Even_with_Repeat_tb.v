// Code your testbench here
// or browse Examples
module Even_tb;
  
  reg [7:0] A;
  
  Even uut(
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
