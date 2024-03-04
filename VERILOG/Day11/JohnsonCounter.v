// Code your design here
module johnson_counter(clk,reset,count);
  
  parameter N=4;
  
  input clk,reset;
  output reg [N-1:0] count;
  
  always@(posedge clk) 
    begin
  
      if(reset)
        count={~count[0],count[N-1:1]};
      
      else
        count=1;
    end

endmodule
