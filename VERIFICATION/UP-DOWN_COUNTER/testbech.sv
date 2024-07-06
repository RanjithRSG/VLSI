// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "test.sv"

module counter_tb;
  
  counter_tt test;
  mailbox mail;
  operation intf();
  
  counter dut(.clk(intf.clk),
              .reset(intf.reset),
              .up_down(intf.up_down),
              .count(intf.count)
             );
  
  initial begin
    mail = new();
    test = new(intf, mail);
    fork
      test.memory;
      test.run;
    join
  end
  
  initial begin
    intf.clk = 1;
    //forever #10 intf.clk = ~intf.clk;
  end
  
  initial begin
    intf.reset = 1;
    #10;
    intf.up_down = 1;
    intf.reset = 0;
    #100;
    intf.up_down = 0;
    intf.reset = 0;
    #200;
    intf.reset = 0;
    #200;
    $finish;
  end
  
  always #10 intf.clk = ~intf.clk;
  
  initial begin
    $monitor("time = %0t, clk = %d, reset = %d, up_down = %d, count = %d", $time, intf.clk, intf.reset, intf.up_down, intf.count);
  end

endmodule
    
