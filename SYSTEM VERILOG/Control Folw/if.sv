// Code your testbench here
// or browse Examples

module top;
  bit [3:0] x;

initial begin
  x = 5;
  $display("control loop");
  if (x==5) begin
    $display("value of x = %0b", x);
    $display("x value is displayed");
    $display("*********************");
  end  
end
endmodule
