// Code your design here
module Factorial(
  input [7:0] N,
  output reg [128:0] Y
);
  
  always@(*) begin
    integer i;
    Y = 1;
    if (N == 0)
        Y = 1;
    else
      for (i = 1;
           i <= N;
           i = i + 1
          )
            Y = Y * i;
  end
  
endmodule
