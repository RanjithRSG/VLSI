// Code your design here
module TFlipFlop(
    input t,
  input reset,
    input clk,
    output reg q,qn
);
  
  assign qn = ~q;

    always @(posedge clk) begin
        if(reset==1)
      q=0;
      else if(t==1)
      q<=~q;   
    else 
       q<=q;
    end
endmodule
