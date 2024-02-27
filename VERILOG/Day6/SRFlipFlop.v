// Code your design here
module SRFlipFlop(
    input S,
    input R,
    input clk,
  input reset,
    output reg q,
    output reg qn
);
  
    assign qn = ~q;

  always@(posedge clk) begin
    
    if(reset==1) q=0;
  else
    
    case({S,R})
      2'b00: q<=q;
      2'b01: q<=0;
      2'b10: q<=1;
      2'b11: q<=1'bx;
    endcase
    
    end
  
endmodule
