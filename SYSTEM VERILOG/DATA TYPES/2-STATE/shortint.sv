// Code your testbench here
// or browse Examples
module shrtint_top;
  
  shortint data_u;
  
  initial begin
    
    $display("Before initialization of shortint value = %b", data_u);
    
    data_u = 16'b0010100101001011;
    $display("After initalization of shortint value = %b", data_u);
    $display("After initalization of shortint value = %d", data_u);
    
  end
  
endmodule
