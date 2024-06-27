// Code your testbench here
// or browse Examples


//equality operators compare operands bit by bit
//if two operands are of unequal filling the zeros
// 0 not equal
// 1 equal

module equality_code;
  logic [0:3] a, b, c;
  logic [0:3] y;
  
  initial begin 
    a=4'bx0x1;
    b=4'b1100;
    c=4'bx0x1;
    
    
    $display("The Value of the a is %0b",a);
    
    $display("The Value of the b is %0b",b);
    
    $display("The Value of the c is %0b",c);
    
    
    y =(a==b);
    
    $display("The output logical equality operator is %0b",y);

    y =(a!=b);
    
    $display("The output logical inequality operator is %0b",y);

    y =(a===c);
    
    $display("The output case equality operator is %0b",y);

    y =(a!==c);
    $display("The output case inequality operator is %0b",y);
  
  end

endmodule
