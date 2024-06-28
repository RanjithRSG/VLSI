// Code your testbench here
// or browse Examples
module top;
  int a[$] = {5, 7, 6, 3, 8};
  int Y[$];
  
  
  initial begin
    $display("Given array = ", a);
    $display("***********************");
    
    a.reverse();
    $display("Reverse oder of array = ", a);
    
    a.sort();
    $display("Sort order of array = ", a);
    
    a.rsort();
    $display("Reverse sort of array = ", a);
  end
endmodule
