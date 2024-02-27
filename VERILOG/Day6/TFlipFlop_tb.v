// Code your testbench here
// or browse Examples
module TFlipFlop_tb;

    reg t, clk, reset;

    wire q, qn;

    TFlipFlop dut (
        .t(t),
        .clk(clk),
      .reset(reset),
      .q(q),
      .qn(qn)
    );

  initial begin
      
    $dumpfile("Tflipflop.vcd");
    $dumpvars(1, TFlipFlop_tb);
      
    end
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

    initial begin
       reset=1;t<=0;
      #20 reset=0;
        t = 0;
        #20;
        t = 1;
        #20;
        t = 0;
        #20;
        t = 1;
        #20;
        $finish;
    end

    always@*
      $monitor("At time %t: t = %b, q = %b, qn = %b", $time, t, q, qn);

endmodule
