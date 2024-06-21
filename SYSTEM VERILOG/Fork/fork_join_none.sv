// Code your testbench here
// or browse Examples
module fork_join_none;
  
  initial begin
    
    $display("Self Story");
    
    fork
      begin
        #5
        $display("I am vignesh");
        #15
        $display("Hiii");
      end
      
      begin
        #10
        $display("Na tha Iron Man");
        #20
        $display("I am Gugan");
      end
      
    join_none
    
    $display("Just for fun");
    
  end
  
endmodule
