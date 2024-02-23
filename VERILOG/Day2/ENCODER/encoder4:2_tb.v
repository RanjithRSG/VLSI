// Code your testbench here
// or browse Examples
module encoder4to2_tb;
  reg A,B,C,D;
  wire X,Y;
  encoder4to2 encoder4to2_tb(.A(A),.B(B),.C(C),.D(D),.X(X),.Y(Y));
  
  initial begin
    $dumpfile("encoder4to2.vcd");
    $dumpvars(1,encoder4to2_tb);
  end
  
  initial begin
    A = 0;B = 0;C = 0;D = 1;
    #10
    A = 0;B = 0;C = 1;D = 0;
    #10
    A = 0;B = 1;C = 0;D = 0;
    #10
    A = 1;B = 0;C = 0;D = 0;
    #10
    $finish;
  end
  
  always@*
    $monitor("time=%0t \tINPUT VALUES: \t A=%b B=%b C=%b D=%b \tOUTPUT VALES: \t X=%b Y=%b\t",$time,A,B,C,D,X,Y,);
endmodule
