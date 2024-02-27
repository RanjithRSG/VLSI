// Code your testbench here
// or browse Examples
module JKFlipFlop_tb;

  reg J, K, clk, reset;
  wire Q, Qn;

  JKFlipFlop uut (
    .J(J),
    .K(K),
    .clk(clk),
    .reset(reset),
    .Q(Q),
    .Qn(Qn)
  );
  
  initial begin
    
    $dumpfile("JKFlipFlop.vcd");
    $dumpvars(1,JKFlipFlop_tb);
    
  end

always #10 clk = ~clk;


  initial begin
    clk = 0;
    reset = 0;
    J = 0; K = 0;
    #20
    J = 0; K = 1;
    #20
    J = 1; K = 0;
    #20
    reset = 1;
    J = 1; K = 1;
    #20
    $finish;
  end

  always @*
    $monitor("Time = %0t, J = %b, K = %b, clk = %b, Q = %b, Qn = %b", $time, J, K, clk, Q, Qn);

endmodule
