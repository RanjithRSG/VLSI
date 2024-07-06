// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "test.sv"

module counter_tb;
  count_test test;
  mailbox mail;
  mailbox mmm;
  operation intf();

  counter dut (
    .clk(intf.clk),
    .reset(intf.reset),
    .count(intf.count)
  );

  initial begin
    mail = new();
    mmm = new();
    test = new(intf, mail, mmm);
    fork
      test.memory();
      test.run();
    join
  end

  initial begin
    intf.clk = 1;
  end

  initial begin
    intf.reset = 1;
    #15;
    intf.reset = 0;
    #500;
    $finish;
  end

  always #10 intf.clk = ~intf.clk;

  initial begin
    $monitor("time = %0t, clk = %d, reset = %d, count = %d", $time, intf.clk, intf.reset, intf.count);
  end
endmodule
