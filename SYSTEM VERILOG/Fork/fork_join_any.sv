// Code your testbench here
// or browse Examples
module fork_join_any;
  
  initial begin
    
    $display("start");
    
    fork
      begin
        #10
        $display("one");
        #20
        $display("two");
      end
      
      begin
        #30
        $display("three");
        #40
        $display("four");
        #50
        $display("five");
      end
      
    join_any
    
    $display("stop");
    
  end
  
endmodule
