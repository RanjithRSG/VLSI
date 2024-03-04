// Code your testbench here
// or browse Examples
module downcouter_tb;
  
  reg clk, reset;
  wire [3:0] out;
  
  downcounter uut(
    .clk(clk),
    .reset(reset),
    .out(out)
  );
  
  initial begin
    
    $dumpfile("downcounter.vcd");
    $dumpvars(1);
    
  end
  
  
  initial begin
    
    clk = 0;
    
    forever #10 clk = ~clk;
    
  end
  
  initial begin
    
    reset = 1;
    #20
    
    reset = 0;
    #500
    
    $finish;
    
  end
  
  always@(*)
    
    $monitor("clk=%d reset =%d out=%d",clk,reset,out);
  
endmodule
