// Code your testbench here
// or browse Examples
module reduction_code;
  logic [3:0] a;
  logic [3:0] y;
  
  initial begin
    a=4'b1010;
    $display("The value a is %0b",a);
    
    y = !a;
    $display("The reduction output of NOT is %d ",y);
    
    y = |a;
    $display("The reduction output of OR is %0b ",y);
    
    y = &a;
    $display("The reduction output of AND is %0d ",y);
    
    y = ~|a;
    $display("The reduction output of NOR is %0b ",y);
    
    y = ~&a;
    $display("The reduction output of NAND is %0b ",y);
    
    y = ^a;
    $display("The reduction output of XOR is %0b ",y);
    
    y = ~^a;
    $display("The reduction output of XNOR is %0b ",y);
  
  end

endmodule 
