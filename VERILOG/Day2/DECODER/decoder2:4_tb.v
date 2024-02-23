// Code your testbench here
// or browse Examples
module decoder2to4_tb;
  reg A,B,En;
  wire y0,y1,y2,y3;
  decoder2to4 decoder2to4_tb(.A(A),.B(B),.En(En),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
  
  initial begin 
    $dumpfile("decoder2to4.vcd");
    $dumpvars(1,decoder2to4_tb);
  end
  
  initial begin
    En =1;A =0;B =0;
    #10
    En =1;A =0;B =1;
    #10
    En =1;A =1;B =0;
    #10
    En =1;A =1;B =1;
    #10
    $finish;
  end
  
  always@*
    $monitor("time=%0t \tINPUT VALUES: \t A=%b B=%b En=%b \tOUTPUT VALES: \t y0=%b y1=%b y2=%b y3=%b\t",$time,A,B,En,y0,y1,y2,y3,);
endmodule
