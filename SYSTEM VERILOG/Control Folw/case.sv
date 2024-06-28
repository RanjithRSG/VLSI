// Code your testbench here
// or browse Examples
module top;
  int x;
  
initial begin
  x = 60;
  case(x) inside
    [2:3] : $display("Value of x = %0d", x);
    [4:5] : $display("Value of x = %0d", x);
    [6:9] : $display("Value of x = %0d", x);
    default : $display("Value of x is not find");
  endcase
end

endmodule
