// Code your testbench here
// or browse Examples
module conditional_code;
  
  string a, b;
  int c, d;
  string y;
  
  initial begin
    a = "true";
    b = "false";
    c = 4'b0011;
    d = 4'b1001;
    $display("The value of c is %0b",c);
    $display("The value of d is %0b",d);
    
    y = c > d ? a : b;
    $display("The conditional output is %0b",y);
  end

endmodule 
