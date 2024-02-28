// Code your testbench here
// or browse Examples
module Equality_tb;

  reg [3:0] A;
  reg [3:0] B;
  reg a, b;
    wire Y1, Y2, Y3, Y4;

    Equality dut (.A(A),
                    .B(B),
                  .a(a),
                  .b(b),
                    .Y1(Y1),
                    .Y2(Y2),
                    .Y3(Y3),
                    .Y4(Y4)
                   );

    initial begin
      A = 4'bx001;
      B = 4'bx101;
      #10
      A = 4'bxx01;
      B = 4'bxx01;
      #10
      a = 5;
      b = 10;
      #10
      a = 8;
      b = 8;
      #10
      $finish;
    end
     
  always@*
    $monitor("A=%b, B=%b, a=%b, b=%b, Y1=%b, Y2=%b, Y3=%b, Y4=%b", A, B, a, b, Y1, Y2, Y3, Y4);

endmodule
