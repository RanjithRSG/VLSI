// Code your testbench here
// or browse Examples
module odd_tb;
  
  reg [7:0]a;
  
  odd odd(
    .a(a)
  );
  
  initial begin
  
    a=17;
    #10
    
    a=87;
    #10
    
    a=980;
    #10
    
    $finish;
  
  end

endmodule
