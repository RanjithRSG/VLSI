// Code your testbench here
// or browse Examples
module swap_tb;

  reg [3:0] a, b;

  wire [3:0] swapped_a, swapped_b;  
 
  swap uut(a, b, swapped_a, swapped_b);
  
  initial begin
    
    a = 101;
    b = 010;
    #10
    
    a = 000;
    b = 111;
    #10
    
    a = 110;
    b = 001;
    #10
    
    a = 011;
    b = 100;
    #10
    
    $finish;
  end
  
  always@(*)
  $monitor("a=%d b=%d swapped_a=%d swapped_b=d",a,b,swapped_a,swapped_b);
  
endmodule
