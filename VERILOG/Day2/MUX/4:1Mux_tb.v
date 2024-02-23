// Code your testbench here
// or browse Examples
module mux4_1_tb;
  reg A,B,C,D,S0,S1;
  wire Y;
  mux4_1 mux4_1_tb(.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.Z(Z));
  
  initial begin
    $dumpfile("mux4_1.vcd");
    $dumpvars(1,mux4_1_tb);
  end
  
  initial begin
    A = 1'b1;B = 1'b0;C = 1'b0;D = 1'b0;S0 = 1'b0;S1 =1'b0;
    #10 A = 1'b0;B = 1'b1;C = 1'b0;D = 1'b0;S0 = 1'b0;S1 =1'b1;
    #10 A = 1'b0;B = 1'b0;C = 1'b1;D = 1'b0;S0 = 1'b1;S1 =1'b0;
    #10 A = 1'b0;B = 1'b0;C = 1'b0;D = 1'b1;S0 = 1'b1;S1 =1'b1;
    #10
    $finish;
  end
  
  always@(Z)
    $monitor("time=%0t \tINPUT VALUES: \t A=%b B=%b C=%b D=%b S0=%b S1=%b \tOUTPUT VALUES: Z =%b \t",$time,A,B,C,D,S0,S1,Z);
endmodule
