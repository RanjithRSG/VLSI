// Code your testbench here
// or browse Examples
module LFSR_tb;
  reg clk, rst;
  wire [3:0] Y;
  
  LFSR lfsr1(clk, rst, Y);
    
  initial begin 
    
    $dumpfile("LFSR.vcd");
    $dumpvars(1,LFSR_tb);
  
  end
  
    always #2 clk=~clk;
  
  initial begin
    
    clk = 0;
    rst = 1;
    #5
    rst = 0;
    #50;
    $finish;
  
  end
  
  always@(*)
    
    $monitor("Y=%b",Y);
  
endmodule
