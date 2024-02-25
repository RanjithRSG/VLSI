// Code your testbench here
// or browse Examples
module Decoder_tb;
  reg a;
  reg b;
  reg c;
  
  wire d0,d1,d2,d3,d4,d5,d6,d7;
  
  Decoder uut(.a(a),
              .b(b),
              .c(c),
              .d0(d0),
              .d1(d1),
              .d2(d2),
              .d3(d3),
              .d4(d4),
              .d5(d5),
              .d6(d6),
              .d7(d7)
             );
  
  initial begin
    
    $dumpfile("Decoder.vcd");
    $dumpvars(1,Decoder_tb);
    
  end
  
  initial begin
    a = 0;
    b = 1;
    c = 0;
    #100;
    a = 1;
    b = 0;
    c = 1;
    #100;
    $finish;
    
  end
  
  always@*
    $monitor("time=%0t \tINPUT VALUES: \t a=%b b=%b c=%b  \t OUTPUT VALUES d0=%b d1=%b d2=%b d3=%b d4=%b d5=%b d6=%b d7=%b",$time,a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);
  
endmodule
