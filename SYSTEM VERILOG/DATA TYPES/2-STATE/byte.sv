// Code your testbench here
// or browse Examples
module byte_top;
  
  byte data;
  
  initial begin
    
    $display("Value of data before given = %0d",data);
    
    data=8'b01011011;
    $display("Value of data after given = %0d",data);
    $display("Value of data after given = %0b",data);
    
    data=8'b11001011;
    $display("Value of data in decimal after 2's complement = %0d",data);
    
  end
endmodule
