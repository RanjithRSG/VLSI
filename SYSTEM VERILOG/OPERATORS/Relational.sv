// Code your testbench here
// or browse Examples

//0 if the relation is false 
//1 if the relation is true

module relational_code;
  logic [2:0] a,b;
  logic y;
  
  initial begin
    a = 3'b111;
    b = 3'b101;
    
    $display("\t Value of a is %0b",a);
    $display("Value of b is %0b",b);
    
    y = a < b;
    $display("\n \t the output of the a < b is %0d",y);
    
    y = a > b;
    $display("\n \t the output of the a > b is %0d",y);
    
    y  = a <= b;
    $display("\n \t the output of the a <= b is %0d",y);
    
    y = a >= b;
    $display("\n \t the output of the a >= b is %0d",y);
  end
endmodule
