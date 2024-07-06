// Code your design here
module counter(
  input clk,
  input reset,
  output reg [7:0] count
);

  always_ff @(posedge clk or posedge reset) begin
    if (reset)
      count <= 8'b0;
    else if (count == 8'b1010)
      count <= 8'b0;
    else
      count <= count + 1;
  end

endmodule
