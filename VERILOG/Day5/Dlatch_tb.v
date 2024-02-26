// Code your testbench here
// or browse Examples
module Dlatch_tb;
  reg d;
  reg en;
  reg reset;
  reg [2:0] delay;
  reg [2:0] delay2;
  wire y;
  integer i;
  
  Dlatch d10( .d (d),
             .en (en),
             .reset (reset),
             .y (y));
  
  initial begin
    
    $dumpfile("Dlatch.vcd");
    $dumpvars(1,Dlatch_tb);
    
    d <= 0;
    en <= 0;
    reset <= 0;
    
    #10
    reset <= 1;
    
    for(i = 0;
        i < 20;
        i = i+1
       ) begin
      delay = $random;
      delay2 = $random;
      #(delay2) en <= ~en;
      #(delay) d <= i;
    end
  end
  
  always@*
    $monitor("time=%0t \tINPUT VALUES: \ d=%b en=%b  \t OUTPUT VALUES q=%b",$time,d,en,y);
  
endmodule
