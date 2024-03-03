// Code your testbench here
// or browse Examples
module swap_tb;

  reg [3:0] a, b;

  wire [3:0] swapped_a, swapped_b;  
 
  swap uut(a, b, swapped_a, swapped_b);
  
  initial begin
    
    a = 1;
    b = 0;
    #10
    
    a = 0;
    b = 1;
    #10
    
    a = 1;
    b = 1;
    #10
    
    a = 0;
    b = 0;
    #10
    
    $finish;
  end
  
  always@(*)
  $monitor("a=%d b=%d swapped_a=%d swapped_b=d",a,b,swapped_a,swapped_b);
  
endmodule
