// Code your testbench here
// or browse Examples
module bitwise_tb;

  reg [3:0] A;
  reg [3:0] B;
  wire [3:0] y1;
  wire [3:0] y2;
  wire [3:0] y3;
  wire [3:0] y4;
  wire [3:0] y5;

    bitwise dut (
      .A(A),
      .B(B),
      .y1(y1),
      .y2(y2),
      .y3(y3),
      .y4(y4),
      .y5(y5)
    );

  initial begin
        A = 0001;
        B = 1000;
    #20
        $finish;
    end
  
  always@*
    $monitor("\%t A=%b B=%b y1=%b y2=%b y3=%b y4=%b y5=%b",$time, A,B,y1,y2,y3,y4,y5);

endmodule
