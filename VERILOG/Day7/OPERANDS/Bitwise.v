// Code your design here
module bitwise(
    input [3:0] A, B,
    output [3:0] y1, y2, y3, y4, y5
);

    assign y1 = A & B;
    assign y2 = A | B;
    assign y3 = A ^ B;
    assign y4 = A ~^ B;
    assign y5 = ~A;

endmodule
