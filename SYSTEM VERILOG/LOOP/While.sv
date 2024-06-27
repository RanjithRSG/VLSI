// Code your design here
module while_basic;
  int x = 1;
  
  initial begin
    $display ("-----while loop output----");
    while( x<6)
      begin
        $display ("Value of x = %0d",x);
        apple++;
      end
  end

endmodule 


// Code your testbench here
// or browse Examples
module while_simple;
  
  int x = 4;
  
  initial begin
    while ( x<5)
      begin
        int a;
        $display ("Iteration = %0d",x);
        $display ("a is a local variable");
        $display ("The size of a = %0d",$size(a));
        $display ("------------------------------");
        x++;
      end
    
    while (x<8)
      begin
        $display ("x is a global varaible ");
        $display ( "The value of x = %0d",x);
        $display ("------------------------");
        x++;
      end
  end

endmodule
