// Code your testbench here
// or browse Examples

module bitwise_code;
  logic [0:3] a, b, c;
  logic [0:3] x, y;
  
  initial begin
    a=4'b1101;
    b=3'b101;
    c=4'bx010;
    $display("The value of a is %0b",a);
    $display("The value of b is %0b",b);
    $display("The Value of c is %0b",c);
    
    y = ~a;
    $display("The bitwise NOT operator output is %0b",y);
    
    y = a & b;
    $display("The bitwise AND operator output is %0b",y);
    
    y = a | c;
    $display("The bitwise OR operator output is %0b",y);
    
    y = a ^ b;
    $display("The bitwise XOR operator output is %0b",y);
    
    y = ~(a & b);
    $display("The bitwise NAND operator output is %0b", y);
    
    y =  ~(b | a);
    $display("The bitwise NOR operator output is %0b", y);
    
    y = ~(a ^ b);
    $display("The bitwise XNOR operator output is %0b", y);
  
  end

endmodule 
