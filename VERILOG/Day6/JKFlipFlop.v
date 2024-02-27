// Code your design here
module JKFlipFlop (
  input J,
  input K,
  input clk,
  input reset,
  output reg Q,
  output reg Qn
);

  always @(posedge clk) begin
    if (reset) begin
      Q <= 1'b0;

    end
    
    else begin
      case ({J, K})
        
        2'b00: Q <= Q;    
        2'b01: Q <= 1'b0; 
        2'b10: Q <= 1'b1; 
        2'b11: Q <= ~Q;   
        
      endcase
    
    end
  
  end
  
  assign Qn = ~Q;
  
endmodule
