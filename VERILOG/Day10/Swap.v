// Code your design here
module swap(
  input [3:0] a, b,
  output reg [3:0] swapped_a, swapped_b
);

  always @(*) begin

    swapped_a = b;
    swapped_b = a;
  end

endmodule
