// Code your testbench here
// or browse Examples
module demux1_2_tb;
  reg I,S;
  wire Y0,Y1;
  demux1_2 demux1_2_tb(.I(I),.S(S),.Y0(Y0),.Y1(Y1));
  
  initial begin
    $dumpfile("demux1_2.vcd");
    $dumpvars(1,demux1_2_tb);
  end
  
  initial begin
    I = 1'b0; S = 1'b0;
    #10 I = 1'b1; S = 1'b1;
    #10
    $finish;
  end
  
  always@(Y0,Y1)
    $monitor("time=%0t \tINPUT VALUES: \t I=%b S=%b\tOUTPUT VALUES: Y0 =%b Y1 =%b \t",$time,I,S,Y0,Y1);
endmodule
