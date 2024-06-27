// Code your testbench here
// or browse Examples
module shift_code;
  logic [3:0] a;
  reg signed [3:0] b;
  logic [3:0] y;
  
  initial begin
    a=4'b1011;
    b=4'b1100;
    
    $display("The value of a is %0b",a);
    $display("The value signed number of b is %0b",b);
    
    y = a << 2;
    $display("The a of logical left shift(a<<2) operator output is %0b",y);
    
    y = b >> 2;
    $display("The b logical right shift(b>>2) operator output is %0b",y);
    
    y = a <<< 1;
    $display("The a Arithmetic left shift(a<<<1) operator output is %0b",y);
    
    y = b >>> 3;
    $display("The b Arithmetic right shift(b>>>3) operator output is %0b",y);
  end
  
endmodule 
