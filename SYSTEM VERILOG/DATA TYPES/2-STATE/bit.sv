// Code your testbench here
// or browse Examples

module bit_top;
  
  bit [2:0] data;
  
  initial begin
    
    data = 3'b001;
    $display("value of data before given = %0d",data);
    
    data = 3'b110;
    $display("value of data after given = %0d",data);
    
    data = 3'bx1z;
    $display("value of data with unknown and  high impedence = %0d",data);
    
  end
endmodule
