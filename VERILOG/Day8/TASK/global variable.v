// Code your design here
module addition(
  input A, B,
  output int Y
);
  
  task convert(  int A,
               int B
             );
    begin
      Y = A + B;
      $display("Y=%d",Y);
    end 
  endtask
  
  
  initial begin
    convert(5,8);
  end
  
endmodule
