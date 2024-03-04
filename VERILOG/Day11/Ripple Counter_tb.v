// Code your testbench here
// or browse Examples
module ripple_tb;
  
  reg clk,reset;
  wire [3:0]out;
  
  ripple ri(
    .clk(clk),
    .reset(reset),
    .out(out)
  );
  
  always#10 clk=~clk;
  
  initial begin
    
    $dumpfile("ripple.vcd");
    $dumpvars(1);
    
  end
  
  initial begin
  
    clk <= 0;
    reset <= 0;
    #10
    
    reset = 1;
    #20
    
    reset = 0;
    #10
    
    reset = 1;
    #30
    
    $finish;
    
  end
    
    always @(*)
      
      $monitor("clk=%d reset=%d out=%d", clk, reset, out);
  
endmodule
    
