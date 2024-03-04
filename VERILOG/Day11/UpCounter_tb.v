// Code your testbench here
// or browse Examples
module upcounter_tb;
  
  reg clk, reset;
  wire [3:0] out;
  
  upcounter uut(
    .clk(clk),
    .reset(reset),
    .out(out)
  );
  
  initial begin
    
    clk= 0;
    forever #10 clk = ~clk;
    
  end
  
  initial begin
    
    $dumpfile("upcounter.vcd");
    $dumpvars(1);
    
  end
  
  initial begin
    
    reset = 1;
    #20
    
    reset = 0;
    #500
    $finish;
    
  end
  
  always@(*)
    
    $monitor("clk=%d reset=%d out=%d",clk,reset,out);
  
endmodule
