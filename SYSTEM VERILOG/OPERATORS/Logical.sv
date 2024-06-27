// Code your testbench here
// or browse Examples
module logic_code;
  logic [0:7] a,b,c,x,y,z;
  
  initial begin
    a=4'd4;
    b=3'b111;
    c=1'bx;
    $display("The value of a is %0d",a);
    $display("The value of b is %0b",b);
    $display("The value of c is %0b",c);
    
    x = a || c ;
    $display("The output of logic OR is %0b",x);
    
    y = b && c;
    $display("The output of logic AND is %0b",y);
    
    z =!b;
    $display("The output of logic NOT is %0b",y);
  end

endmodule 
