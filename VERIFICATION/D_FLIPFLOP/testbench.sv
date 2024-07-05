// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "test.sv"

module Dff_tb;
  
  DFFtest test;
  mailbox mail;
  operation intf();
  
  Dff dut(.clk(intf.clk),
          .reset(intf.reset),
          .D(intf.D),
          .Q(intf.Q)
         );
  
  initial begin
    intf.clk = 1;
    //forever #10 intf.cllk = ~intf.clk;
  end
  
  initial begin
    mail = new();
    test = new(intf, mail);
    fork
      test.memory;
      test.run;
    join
  end
  
  initial begin
    intf.reset = 1;
    #20;
    intf.reset = 0;
    #50;
    $finish;
  end
  
  always #10 intf.clk = ~intf.clk;
  
  initial begin
    $monitor("time = %0t, clk = %d, reset = %d, D = %d, Q = %d",$time, intf.clk, intf.reset, intf.D, intf.Q);
  end
  
endmodule
