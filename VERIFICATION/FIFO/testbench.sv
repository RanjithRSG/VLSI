`include "environment.sv"
`include "interface.sv"

module tb;
  environment env;
  
  inter intf();
  fifo gut(.clk(intf.clk),
           .rst(intf.rst),
           .wr(intf.wr),
           .rd(intf.rd),
           .din(intf.din),
           .dout(intf.dout),
           .full(intf.full),
           .empty(intf.empty)
          );
  
  initial begin
    intf.clk=1'b0;
   // intf.rst=1'b1;
    
   // #20 intf.rst=1'b0;
  end
  always #10 intf.clk=~intf.clk;
  
  initial begin
    env=new(intf);
    env.gnt.count=30;
    env.run();
  end
  
  initial begin
   // $monitor("clk=%0d rst=%0d  dout---%d",intf.clk,intf.rst,intf.dout);
    $dumpfile("fifo.vcd");
    $dumpvars(1);
    #1000;
    $finish;
  end
  
endmodule
