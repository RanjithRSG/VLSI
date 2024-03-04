// Code your testbench here
// or browse Examples
module johnson_counter_tb();
  
  parameter N=4;
  reg clk,reset;
  wire [N-1:0] count;
  
  johnson_counter dut(clk,reset,count);
  
  always #10 clk=~clk;
  
  initial begin
	
    $dumpfile("johnson_counter.vcd");
    $dumpvars(1);
    
    clk=0;
    
    reset=0;
    #50
    reset=1;
    #200
    
    $finish;
  end
  
  always @(*)
    
    $monitor ("clk=%b reset=%b count=%b", clk, reset, count);
  
endmodule
