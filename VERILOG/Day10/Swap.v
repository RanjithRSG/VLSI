// Code your design here
module swap(
  input wire a, b,
  output reg swapped_a, swapped_b
);

  always @(*) begin

    swapped_a = b;
    swapped_b = a;
  end

endmodule
