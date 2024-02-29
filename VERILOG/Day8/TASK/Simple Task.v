// Code your design here
module subtraction();
  int Y;
  task convert(
    input int A, B,
    output int Y 
  );
    
    begin
      Y = A - B;
      $display("Y =%d",Y);
    end 
    
  endtask
  
  initial begin 
    
    convert(8, 9,Y);
  
  end
  
endmodule
