// Code your testbench here
// or browse Examples
module btog_tb;
  reg b1,b2,b3,b4;
  wire g1,g2,g3,g4;
  btog btog_tb(.b1(b1),.b2(b2),.b3(b3),.b4(b4),.g1(g1),.g2(g2),.g3(g3),.g4(g4));
  
  initial begin
    $dummpfile("btog.vcd");
    $dumpvars(1,btog_tb);
  end
  
   initial begin
     b1 = 0;b2 = 0;b3 = 0;b4 = 0;
     #10 b1 = 0;b2 = 0;b3 = 0;b4 = 1;
     #10 b1 = 0;b2 = 0;b3 = 1;b4 = 0;
     #10 b1 = 0;b2 = 0;b3 = 1;b4 = 1;
     #10 b1 = 0;b2 = 1;b3 = 0;b4 = 0;
     #10 b1 = 0;b2 = 1;b3 = 0;b4 = 1;
     #10 b1 = 0;b2 = 1;b3 = 1;b4 = 0;
     #10 b1 = 0;b2 = 1;b3 = 1;b4 = 1;
     #10 b1 = 1;b2 = 0;b3 = 0;b4 = 0;
     #10 b1 = 1;b2 = 0;b3 = 0;b4 = 1;
     #10 b1 = 1;b2 = 0;b3 = 1;b4 = 0;
     #10 b1 = 1;b2 = 0;b3 = 1;b4 = 1;
     #10 b1 = 1;b2 = 1;b3 = 0;b4 = 0;
     #10 b1 = 1;b2 = 1;b3 = 0;b4 = 1;
     #10 b1 = 1;b2 = 1;b3 = 1;b4 = 0;
     #10 b1 = 1;b2 = 1;b3 = 1;b4 = 1;
     #10
     $finish;
   end
  
  always@*
    $monitor("time=%0t \tINPUT VALUES: \t b1=%b b2=%b b3=%b b4=%b \tOUTPUT VALES: \t g1=%b g2=%b g3=%b g4=%b\t",$time,b1,b2,b3,b4,g1,g2,g3,g4,);
endmodule
