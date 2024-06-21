// Code your design here
module fork_join_wait;
  
  initial begin
    
    $display("start");
    
    fork
      begin
        #5
        $display("task 1");
        #10
        $display("task 2");
      end
      
      begin
        #20
        $display("task 3");
        #30
        $display("task 4");
      end
    join_none
    
    wait fork;
    
    $display("ended");
    
  end
  
endmodule
