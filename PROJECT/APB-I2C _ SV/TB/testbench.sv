// Code your testbench here
// or browse Examples
`include "apb_interface.sv"
`include "test.sv"

module tb;
  
  apb_interface intf();
  test_top test;
  mailbox mail;
  mailbox mbox;
  
  apb_i2c dut(.HCLK(intf.HCLK),
              .HRESETn(intf.HRESETn),
              .PADDR(intf.PADDR),
              .PWDATA(intf.PWDATA),
              .PWRITE(intf.PWRITE),
              .PSEL(intf.PSEL),
              .PENABLE(intf.PENABLE),
              .PRDATA(intf.PRDATA),
              .PREADY(intf.PREADY),
              .PSLVERR(intf.PSLVERR),
              .interrupt_o(intf.interrupt_o)
             );
  
  
  always #5 intf.HCLK = ~intf.HCLK;

  initial begin
    mail = new();
    test = new(mail, mbox, intf);
    intf.HCLK = 0;
    intf.HRESETn = 0;
    #20
    intf.HRESETn = 1;
    test.run();
    #2000
    $finish;
  end
  
  initial begin 
    fork
      begin
        test.memory;
        test.run;
      end
    join
  end

endmodule
