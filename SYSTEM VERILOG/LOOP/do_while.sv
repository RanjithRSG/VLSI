// Code your testbench here
// or browse Examples
module do_while_code; 
 int X = 1;
  initial begin
    $display("------do while output ---");
    do 
      begin
        $display("Value of X = %0d", X);
        X = X +1;
      end
    while(X<6);
    $display("Value Printed");
  end
  
endmodule
