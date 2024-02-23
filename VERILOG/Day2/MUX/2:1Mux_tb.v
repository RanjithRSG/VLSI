// Code your testbench here
// or browse Examples
module mux2_1_tb;
  reg I0,I1,Sel;
  wire Z;
  mux2_1 mux2_1_tb(.I0(I0),.I1(I1),.Sel(Sel),.Z(Z));
  
  initial begin
    $dumpfile("mux2_1.vcd");
    $dumpvars(1,mux2_1_tb);
  end
  
  initial begin
    I0 = 1'b0; I1 = 1'b1; Sel = 1'b0;
    #10 I0 = 1'b0; I1 = 1'b1; Sel = 1'b1;
    #10
    $finish;
  end
  
  always@(Z)
    $display("time=%0t \tINPUT VALUES: \t I0=%b I1=%b sel=%b\tOUTPUT VALUES: Z =%b \t ",$time,I0,I1,Sel,Z);
endmodule
