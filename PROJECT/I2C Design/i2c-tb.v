`include "slave.sv"
module tbmast;
  
  reg [6:0] address;
  reg [7:0] register;
  reg [7:0] data;
  reg [7:0] data_wr;
  reg clk;
  reg rw;
  
  wire sda;
  wire scl;
  
  master uut (
    .address(address),
    .register(register),
    .clk(clk),
    .rw(rw),
    .sda(sda),
    .scl(scl),
    .data(data),
    .data_wr(data_wr)
  );
  
  initial begin
    
    address = 105;
    register = 7'b0100101;
    clk = 0;
    rw = 0;
    data_wr = $urandom;
    #10;
    
  end
  
  always #1 clk = !clk;
  
  initial begin
    
    $monitor("$time=%0t address=%0d register=%0d clk=%0d rw=%0d sda=%0d scl=%0d data_wr=%0d",$time, address, register, clk, rw, sda, scl, data_wr);
    
    $dumpfile("dump.vcd");
    $dumpvars();
    #200;
    
    $finish;
  end
  
endmodule
