// Code your design here
module Arithmatic (
    input [2:0] A, B,
    output reg [7:0] Y1, Y2, Y3, Y4, Y5
);

    always @* begin
        Y1 = A + B;
        Y2 = A - B;
        Y3 = A * B;
        Y4 = A / B;
        Y5 = A % B;
    end

endmodule
