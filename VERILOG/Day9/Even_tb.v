// Code your testbench here
// or browse Examples
module even_tb;
  
  reg [7:0]a;
  
  even even(
    .a(a)
           );
  
  initial begin
  
    a=48;
    #10
    
    a=65;
    #10
    $finish;
  
  end

endmodule
