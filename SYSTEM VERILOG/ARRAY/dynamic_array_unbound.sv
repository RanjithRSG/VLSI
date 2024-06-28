// Code your testbench here
// or browse Examples
module dynamic;
  
  int da [];
  
  initial begin
    da = new[5];
    da ='{1,2,5,6,8};
    $display("The dynamic array elements: %0p",da);
    
    $display("Printring the value of  the each index place");
    
    foreach (da[i])
    $display("da[%0d] = %0d",i,da[i]);
    $display("out of bound ", "display default value of data_type ","da[1024]=%0d",da[1024]);
  end
  
endmodule
