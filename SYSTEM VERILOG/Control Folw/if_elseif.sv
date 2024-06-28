// Code your testbench here
// or browse Examples
module top;
  bit x;
  
  initial
    begin
      x = 2;
      if(x<5)
        $display("value less than limit");
      else if (x>5)
        $display("value greater than limit");
      else
        $display("value not in limit");
    end
  
endmodule
