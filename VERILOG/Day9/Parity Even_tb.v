// Code your testbench here
// or browse Examples
module Parityeven_tb;
  
  reg a,b,c;
  
  wire p;
  
  Parityeven uut(
    .a(a),
    .b(b),
    .c(c),
    .p(p)
  );
  
  initial begin
    
    $dumpfile("Parityeven.vcd");
    $dumpvars(1,Parityeven_tb);
    
  end
  
  initial begin
    
    a=0; b=0; c=0;
    #10
    a=0; b=0; c=1;
    #10
    a=0; b=1; c=0;
    #10
    a=0; b=1; c=1;
    #10
    a=1; b=0; c=0;
    #10
    a=1; b=0; c=1;
    #10
    a=1; b=1; c=0;
    #10
    a=1; b=1; c=1;
    #10
    $finish;
    
  end
  
  always@(*)
    
    $monitor("%t a=%d b=%d c=%d p=%d",$time,a,b,c,p);
  
endmodule
