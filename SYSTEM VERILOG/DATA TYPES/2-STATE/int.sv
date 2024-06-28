// Code your testbench here
// or browse Examples
module int_top;
  
  int data;
  
  initial begin
    
    $display("before value assign =%0d",data);
    data=32'hbdfaeedc;
    $display("after assigning = %0d",data);
    $display("after assigning = %0b",data);
    
  end
endmodule
