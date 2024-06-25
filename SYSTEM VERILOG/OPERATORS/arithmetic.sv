// Code your testbench here
// or browse Examples
module arithmetic_code;
  int a = 8;
  int b = 7;
  
  int x,y;
  
  initial begin
    $display("The Value of a = %0d",a);
    $display("The Value of b = %0d",b);
    
    y = a + b;
    $display("The Value of in y is after Addition = %0d",y);
    
    y = a - b;
    $display("The Value of in y is after Subtraction = %0d",y);
    
    y = a * b;
    $display("The Value of in y is after Multiplication = %0d",y);
    
    y = a / b;
    $display("The Value in y is after Division = %0d",y);
    
    y =a % b;
    $display("The Value in y is after Modulus b = %0d",y);
    
    y = a ** b;
    $display("The Value in y is after Exponential = %0d",y);
  
  end
  
endmodule
