// Code your testbench here
// or browse Examples
module Relational_tb;

  reg [2:0] A;
  reg [2:0] B;
    wire Y1, Y2, Y3, Y4;

    Relational dut (.A(A),
                    .B(B),
                    .Y1(Y1),
                    .Y2(Y2),
                    .Y3(Y3),
                    .Y4(Y4)
                   );

    initial begin
        A = 001;
        B = 101;
        #10;
        $finish;
    end
     
  always@*
    $monitor("A=%b, B=%b, Y1=%b, Y2=%b, Y3=%b, Y4=%b", A, B, Y1, Y2, Y3, Y4);

endmodule
