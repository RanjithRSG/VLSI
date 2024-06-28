// Code your testbench here
// or browse Examples
module top;
  bit x;
  
  initial
    begin
      x = 2;
      if(x<5)
        $display("value is with in the limit");
      else
        $display("value exceed the limit");
    end
  
endmodule
