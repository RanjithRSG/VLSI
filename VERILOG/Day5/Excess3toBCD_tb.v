// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module Excess3toBCD_tb;

  reg [3:0] y;

  wire [3:0] a;

  Excess3toBCD dut(.y(y),
                   .a(a)
                  );

  initial begin
    $dumpfile("Excess3toBCD.vcd");
    $dumpvars(0, Excess3toBCD_tb);
    
    y = 3'b0110; 
    #10; 
    y = 4'b0001; 
    #10; 
    y = 4'b0010; 
    #10; 
    y = 4'b0011; 
    #10; 
    y = 4'b0100; 
    #10;
    y = 4'b0101; 
    #10; 
    y = 4'b0110; 
    #10; 
    $finish;
  end
    

  always @*
    $display("y=%b \t a=%b", y, a);

endmodule
