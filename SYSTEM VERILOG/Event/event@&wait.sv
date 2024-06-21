// Code your design here
module tb;
  
  event e1;
  
  task t1;
    #10
    $display("EVENT stage 1");
    ->e1;
    $display("EVENT stage 2");
    ->e1;
    $display("EVENT stage 3");
  endtask
  
  task t2;
    $display("Event Started");
    @e1;
    $display("Event ended");
  endtask
  
  task t3;
    $display("EVENT stage 4");
    wait(e1.triggered);
  endtask
  
  initial begin
    fork
      t1;
      t2;
      t3;
    join
  end
  
endmodule
