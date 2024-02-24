// Code your testbench here
// or browse Examples
module comparator_tb;
  reg [3:0] A, B;
  wire AgrtB, AlessB, AeqB;
  
  comparator comp(A, B, AgrtB, AlessB, AeqB);
  always #4 A = $random%16;
  always #4 B = $random%16;
  
  initial begin
    $dumpfile("comparator.vcd");
    $dumpvars(1,comparator_tb);
  end
  
  initial begin
    A = 4'b0000;
    #10
    B = 4'b0000;
    #10
    $finish;
  end
  
  always@*
    $monitor("A = %0h, B = %0h -> AgrtB = %0b, AlessB = %0b, AeqB = %0b", A, B, AgrtB, AlessB, AeqB);
  
endmodule
