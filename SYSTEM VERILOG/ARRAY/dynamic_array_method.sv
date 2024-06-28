// Code your testbench here
// or browse Examples
module methods_dynamic;
  
  int xyz [];
  
  initial begin
    xyz = new[10];
    xyz = '{11,12,13,14,15,16,17,18,19,20};
    $display("Dynamic array values = ", xyz);
    
    foreach(xyz[i])
      begin
      $display("value of xyz[%0d]=%0d",i,xyz[i]);
      end
    
    $display("Displaying the array size");
    $display("%0d",xyz.size());
    
    xyz.delete();
    $display("After deleting all elements the size of the array");
    $display("%0d",xyz.size());
  end

endmodule
