// Code your testbench here
// or browse Examples
module top;
  
  int a[4] = {2,5,8,9};
  int y;
  
  initial begin
    
    $display("Values of array = ", a);
    
    y = a.sum();
    $display("sum of array = ", y);
    
    y = a.product();
    $display("product of array = ", y);
    
    y = a.and();
    $display("and of array = ", y);
    
    y = a.or();
    $display("or of array = ", y);
    
    y = a.xor();
    $display("xor of array = ", y);
    
  end
  
endmodule
