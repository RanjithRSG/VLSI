// Code your testbench here
// or browse Examples
module fsub_tb;
  reg A, B , C;
  wire Diff, borrow;
  fsub fsub(.A(A), .B(B), .C(C), .Do(Do), .bo(bo));
  initial begin
    $dumpfile("fsub.vcd");
    $dumpvars(1,fsub_tb);  
  end

  initial begin
    #10 A = 1'b0; B = 1'b0; C = 1'b0;
    #10 A = 1'b0; B = 1'b0; C = 1'b1;
    #10 A = 1'b0; B = 1'b1; C = 1'b0;
    #10 A = 1'b0; B = 1'b1; C = 1'b1;
    #10 A = 1'b1; B = 1'b0; C = 1'b0;
    #10 A = 1'b1; B = 1'b0; C = 1'b1;
    #10 A = 1'b1; B = 1'b1; C = 1'b0;
    #10 A = 1'b1; B = 1'b1; C = 1'b1;
    #10
    $finish;
  end
  always @(A,B,C)
    $display("time=%0t \tINPUT VALUES: \t A=%b B=%b C=%b\t output value Do = %b \t bo =%b", $time, A, B, C, Do, bo);
endmodule
