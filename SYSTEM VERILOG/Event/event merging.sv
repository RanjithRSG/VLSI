// Code your design here
module tb;
  
  event a, b;
  
  task tk;
    
    b = a;
    #10
    ->b;
    $display("event 2 triggered");
    
  endtask
  
  initial begin
    fork
      tk;
      $display("event happening");
      wait(a.triggered);
      $display("event 1 triggered");
    join
  end
  
endmodule
