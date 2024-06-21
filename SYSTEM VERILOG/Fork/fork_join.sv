// Code your testbench here
// or browse Examples
module fork_join;
  
  initial begin
    $display("Fork Join going to start");
    
    fork
      begin
        #1
        $display("PERSON 1");
        #21
        $display("PERSON 2");
        
      end
      
      begin
        #5
        $display("1 NAME:");
        #15
        $display("DOB & AGE:");
      end
      
      begin
        #30
        $display("VIGNESH");
        #40
        $display("28/04/2003 & 21");
      end
      
      begin
        #10
        $display("RANJITH");
        #11
        $display("20/03/2003 & 21");
      end
      
       begin
        #25
         $display("NAME:");
        #35
         $display("DOB & AGE:");
      end
      
    join
    
    $display("Fork Join Finished");
    
  end 
  
endmodule
