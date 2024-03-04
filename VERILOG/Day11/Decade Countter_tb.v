// Code your testbench here
// or browse Examples
module decadecounter_tb;
  parameter N = 4;
  
  reg clk, reset;
  wire [N - 1:0] out;
  
  decadecounter uut(
    .clk(clk),
    .reset(reset),
    .out(out)
  );
  
  initial begin 
    
    $dumpfile("decadecounter.vcd");
    $dumpvars(1);
    
  end
  
  always #10 clk =~clk;
  
  initial begin
    
    clk = 0;
    
    reset = 1;
    #20
    
    reset = 0;
    #200
    
    $finish;
    
  end
  
  always @(*)
    
    $monitor("clk=%d reset=%d out=%d", clk, reset, out);
  
endmodule
