// Code your testbench here
// or browse Examples
module demux1_8_tb;
  reg I,S1,S2,S3;
  wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
  demux1_8 demux1_8_tb(.I(I),.S1(S1),.S2(S2),.S3(S3),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3),.Y4(Y4),.Y5(Y5),.Y6(Y6),.Y7(Y7));
  
  initial begin
    $dumpfile("demux1_8.vcd");
    $dumpvars(1,demux1_8_tb);
  end
  
  initial begin
    I = 1'b0;S1 = 1'b0;S2 = 1'b0;S3 = 1'b0;
    #10 I = 1'b0;S1 = 1'b0;S2 = 1'b0;S3 = 1'b1;
    #10 I = 1'b0;S1 = 1'b0;S2 = 1'b1;S3 = 1'b0;
    #10 I = 1'b0;S1 = 1'b0;S2 = 1'b1;S3 = 1'b1;
    #10 I = 1'b0;S1 = 1'b1;S2 = 1'b0;S3 = 1'b0;
    #10 I = 1'b0;S1 = 1'b1;S2 = 1'b0;S3 = 1'b1;
    #10 I = 1'b0;S1 = 1'b1;S2 = 1'b1;S3 = 1'b0;
    #10 I = 1'b0;S1 = 1'b1;S2 = 1'b1;S3 = 1'b1;
    #10 
    $finish;
  end
  
  always@*
    $monitor("time=%0t \tINPUT VALUES: \t I=%b S1=%b S2=%b S3=%b\tOUTPUT VALUES: Y0 =%b Y1 =%b Y2 =%b Y3 =%b Y4 =%b Y51 =%b Y6 =%b Y7 =%b \t",$time,I,S1,S2,S3,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
endmodule
