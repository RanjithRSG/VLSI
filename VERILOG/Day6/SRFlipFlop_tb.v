// Code your testbench here
// or browse Examples
module SRFlipFlop_tb;

    reg S, R, clk, reset;
  
    wire q, qn;

    SRFlipFlop dut (
        .S(S),
        .R(R),
        .clk(clk),
      .reset(reset),
        .q(q),
        .qn(qn)
    );

    initial begin
      
        $dumpfile("SRflipflop.vcd");
        $dumpvars(1, SRFlipFlop_tb);
      
    end

       initial 
    begin
    clk=1;
    end
  always #10 clk=~clk;
  initial
    begin
      reset=1;S=0;R=0;
       #10reset=0;
      #30 S=0;R=1;
      #40 S=1;R=0;
      #50 S=1;R=1;
      #50 $finish;
    end

    always @* $monitor("At time %t: S = %b, R = %b, clk = %b, q = %b, qn = %b", $time, S, R, clk, q, qn);

endmodule
