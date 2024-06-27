// Code your design here
module repeat_code;
  
  initial begin 
    
    repeat(4)
      begin
      $display ("Good morning");
      $display ("Have A Great Day");
      $display ("************");
    end
    
  end 
  
endmodule


// Code your testbench here
// or browse Examples
module repeat_for;
  
  initial begin
    
    for (int i = 1;i<=4;i++)
      begin
      $display ("Good morning");
      $display ("Have A Great Day");
      $display ("------------");
      end 
  end 

endmodule 
