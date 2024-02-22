// Code your testbench here
// or browse Examples
module halfsub_tb;
  reg A, B;
  wire D, b;
  halfsub halfsub(.A(A), .B(B), .D(D), .b(b));
  initial begin
    $dumpfile("halfsub.vcd");
    $dumpvars(1, halfsub_tb);  
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
    $display("time=%0t \tINPUT VALUES: \t A=%b B=%b \t output value D = %b\t b=%b", $time, A, B, D, b);
endmodule
