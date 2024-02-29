// Code your testbench here
// or browse Examples
module Concatenation_tb;
  
  reg [1:0] A;
  reg [2:0] B;
  reg [3:0] C;
  wire [7:0] y1, y2, y3;
  
  Concatenation uut(
    .A(A),
    .B(B),
    .C(C),
    .y1(y1),
    .y2(y2),
    .y3(y3)
  );
  
  initial begin
    
    A = 2'b01;
    B = 3'b101;
    C = 4'b1010;
    #10
    $finish;
    
  end
  
  always@*
    $monitor("%t A=%b B=%b C=%b y1=%b,y2=%b,y3=%b,", $time, A, B, C, y1, y2, y3);
  
endmodule
