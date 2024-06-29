// Code your testbench here
// or browse Examples
module longint_top;
  
  longint data_u;
  
  initial begin
    
    $display("Before initialization of longint value = %b", data_u);
    
    data_u = 64'h0bcdefab0bcdefab;
    $display("After initalization of longint value = %b", data_u);
    $display("After initalization of longint value = %d", data_u);
    
  end
  
endmodule
