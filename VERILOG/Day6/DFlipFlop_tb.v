// Code your testbench here
// or browse Examples
module DFlipFlop_tb();
  reg D;
  reg clk;
  reg reset;
  wire Q;

DFlipFlop dut(D,clk,reset,Q);
  
  initial begin
    
    $dumpfile("DFlipFlop.vcd");
    $dumpvars(1,DFlipFlop_tb);
    
  end

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end
  
initial begin 
 reset=1;
 D <= 0;
 #5
 reset=0;
 D <= 1;
  #10
 D <= 0;
  #10
 D <= 1;
  #10
  $finish;
end
  
 always @*
  $monitor("Time = %0t, D = %b, clk = %b, reset = %b, Q = %b", $time, D, clk, reset, Q);
  
endmodule 
