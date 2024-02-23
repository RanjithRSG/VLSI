// Code your testbench here
// or browse Examples
module gtob_tb;
  reg g1,g2,g3,g4;
  wire b1,b2,b3,b4;
  gtob gtob_tb(.g1(g1),.g2(g2),.g3(g3),.g4(g4),.b1(b1),.b2(b2),.b3(b3),.b4(b4));
  
  initial begin
    $dummpfile("gtob.vcd");
    $dumpvars(1,gtob_tb);
  end
  
   initial begin
     g1 = 0;g2 = 0;g3 = 0;g4 = 0;
     #10 g1 = 0;g2 = 0;g3 = 0;g4 = 1;
     #10 g1 = 0;g2 = 0;g3 = 1;g4 = 0;
     #10 g1 = 0;g2 = 0;g3 = 1;g4 = 1;
     #10 g1 = 0;g2 = 1;g3 = 0;g4 = 0;
     #10 g1 = 0;g2 = 1;g3 = 0;g4 = 1;
     #10 g1 = 0;g2 = 1;g3 = 1;g4 = 0;
     #10 g1 = 0;g2 = 1;g3 = 1;g4 = 1;
     #10 g1 = 1;g2 = 0;g3 = 0;g4 = 0;
     #10 g1 = 1;g2 = 0;g3 = 0;g4 = 1;
     #10 g1 = 1;g2 = 0;g3 = 1;g4 = 0;
     #10 g1 = 1;g2 = 0;g3 = 1;g4 = 1;
     #10 g1 = 1;g2 = 1;g3 = 0;g4 = 0;
     #10 g1 = 1;g2 = 1;g3 = 0;g4 = 1;
     #10 g1 = 1;g2 = 1;g3 = 1;g4 = 0;
     #10 g1 = 1;g2 = 1;g3 = 1;g4 = 1;
     #10
     $finish;
   end
  
  always@*
    $monitor("time=%0t \tINPUT VALUES: \t g1=%b g2=%b g3=%b g4=%b \tOUTPUT VALES: \t b1=%b b2=%b b3=%b b4=%b\t",$time,g1,g2,g3,g4,b1,b2,b3,b4,);
endmodule
