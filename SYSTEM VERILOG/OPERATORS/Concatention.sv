// Code your testbench here
// or browse Examples
module concatenation_code;
  logic [3:0] a, b, c;
  int x;
  
  initial begin
    a=1'b1;
    b=4'b1110;
    c=4'b1101;
    $display("The value of a is %0d",a);
    $display("The value of b is %0b",b);
    $display("The value of c is %0b",c);
    
    x = {a,b,c};
    $display("The output a,b,c of Concatenation operators output is %0b",x);
    #10;
    x= {a,b,{3{c}}};
    $display("The output a,b,3c of Replicates operators output is %0b",x);
  end
  
endmodule 
