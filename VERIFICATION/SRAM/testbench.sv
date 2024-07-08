// Code your testbench here
// or browse Examples
`include "interface.sv"
`include "test.sv"

module sram_tb;
  
  sram_test test;
  operation intf();
  mailbox mail;
  mailbox mbox;
  
  sram dut(.clk(intf.clk),
           .reset(intf.reset),
           .data(intf.data),
           .addr(intf.addr),
           .write(intf.write),
           .read(intf.read),
           .dataout(intf.dataout)
          );
  
  initial begin
    mail = new();
    mbox = new();
    test = new(intf, mail, mbox);
    fork
      test.memory;
      test.run;
    join
  end
  
  initial begin
    intf.clk = 1;
//     forever #10 intf.clk = ~intf.clk;
  end
  
  initial begin
    #0;
    intf.reset = 1;
    #10;
    intf.reset = 0;

  end
  
  always #10 intf.clk = ~intf.clk;
  
  initial begin
    $monitor("time = %0t clk = %b reset = %b data = %d addr = %d  write = %b  read = %b dataout = %d", $time, intf.clk, intf.reset, intf.data, intf.addr, intf.write, intf.read, intf.dataout);
    
    $dumpfile("sram.vcd");
    $dumpvars();
    #250;
    $finish;
  end
  
endmodule
