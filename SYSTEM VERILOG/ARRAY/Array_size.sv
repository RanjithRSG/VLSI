// Code your testbench here
// or browse Examples
module top;
  int array[8] = {89,77,74,97,04,48,75,15};
  int Y[$];
  
  initial begin
    $display("Given array = ", array);
    $display("***********************");
    
    Y = array.min();
    $display("minimum value in array = ", Y);
    
    Y = array.max();
    $display("maximum value in array = ", Y);
    
    Y = array.unique();
    $display("unique value in array = ", Y);
    
    Y = array.unique_index();
    $display("unique_index value in array = ", Y);
  end
endmodule
