module halfadder_tb;
  reg A, B;
  wire S, C;
  halfadder halfadder(.A(A), .B(B), .S(S), .C(C));
  initial begin
    $dumpfile("halfadder.vcd");
    $dumpvars(1, halfadder_tb);  
  end

  initial begin
    A = 1'b0; B = 1'b0;
    #10 A = 1'b0; B = 1'b1;
    #10 A = 1'b1; B = 1'b0;
    #10 A = 1'b1; B = 1'b1;
    #10
    $finish;
  end

  always @*
    $display("time=%0t \tINPUT VALUES: \t A=%b B=%b \t output value S = %b\t C=%b", $time, A, B, S, C);
endmodule
