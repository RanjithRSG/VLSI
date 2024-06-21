// Code your design here
module tb;
  
  event a, b, c;
  
  initial begin
    fork
      #10
      ->a;
      #10
      ->b;
      #10
      ->c;
    join
  end
  
  initial begin
    
    $display("Event to be triggered");
    wait_order(b, c, a)
    $display("event inorder");
    else
      $display("event out of order");
    
  end
  
endmodule
