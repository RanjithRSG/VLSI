// Code your testbench here
// or browse Examples
module Arithmatic_tb;

    reg [2:0] A;
    reg [2:0] B;
    wire [7:0] Y1;
    wire [7:0] Y2;
    wire [7:0] Y3;
    wire [7:0] Y4;
    wire [7:0] Y5;

    Arithmatic dut (
        .A(A),
        .B(B),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3),
        .Y4(Y4),
        .Y5(Y5)
    );

    initial begin
        A = 3'b101;
        B = 3'b010;
        #10;
        $finish;
    end
  
  always@*
    $monitor("%t A=%b B=%b Y1=%b,Y2=%b,Y3=%b,Y4=%b,Y5=%b", $time, A, B, Y1, Y2, Y3, Y4, Y5);

endmodule
