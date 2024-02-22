module xorg_tb;
  reg A, B;
  wire Y;
  xorg xorgate(.A(A), .B(B), .Y(Y));
  initial begin
    $dumpfile("xorg.vcd");
    $dumpvars(1, xorg_tb);
  end
  initial begin
    A = 1'b0; B = 1'b0;
    #10
    $display("time=%0t A=%b B=%b Y=%b", $time, A, B, Y);
    A = 1'b0; B = 1'b1;
    #10
    $display("time=%0t A=%b B=%b Y=%b", $time, A, B, Y);
    A = 1'b1; B = 1'b0;
    #10
    $display("time=%0t A=%b B=%b Y=%b", $time, A, B, Y);
    A = 1'b1; B = 1'b1;
    #10
    $display("time=%0t A=%b B=%b Y=%b", $time, A, B, Y);
    $finish;
  end
endmodule
