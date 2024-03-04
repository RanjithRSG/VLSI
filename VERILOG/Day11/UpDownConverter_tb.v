// Code your testbench here
// or browse Examples
module up_down_counter_tb;
  
  reg clk, reset, up_down;
  wire [3:0] out;
  
  up_down_counter uut(
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .out(out)
  );
  
  initial begin 
    
    $dumpfile("up_down_counter.vcd");
    $dumpvars(1);
  
  end
  
  initial begin 
    
    clk = 0;
    forever #5 clk = ~clk;
     
  end
  
  initial begin 
    
    reset = 1;
    up_down = 1;
    #5
    
    reset = 0;
    #170
    
    reset = 1;
    up_down = 0;
    #5
    
    reset = 0;
    #170  
    
    $finish;
    
  end
  
  always@(*)
    
    $monitor("clk=%d reset=%d up_down=%d out=%d",clk, reset, up_down, out);
  
endmodule
