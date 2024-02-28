// Code your testbench here
// or browse Examples
module Logical_tb;

    reg A;
    reg B;
    wire y1, y2, y3, y4;

    Logical dut (
        .A(A),
        .B(B),
        .y1(y1),
        .y2(y2),
      .y3(y3),
      .y4(y4)
    );

    initial begin
      A = 4'b0101;
      B = 4'b1001;
      #10
      A = 1'b1;
      B = 1'bx;
      #10
      A = 1'b1;
      B = 1'b1;
      #10
        $finish;
    end
  
  always@*
    $monitor("%t A=%b B=%b y1=%b,y2=%b,y3=%b,y4=%b,", $time, A, B, y1, y2, y3, y4);

    
endmodule
