// Code your design here
module fork_join_disable;
  
  initial begin
    
    $display("start");
    
    fork
      begin
        $display("one");
        #10
        $display("two");
      end
      
      begin
        #20
        $display("three");
        #30
        $display("four");
      end
      
    join_none
    
    disable fork;
      
      $display("ended");
      end
      
endmodule
