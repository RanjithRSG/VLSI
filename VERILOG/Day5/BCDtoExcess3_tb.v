// Code your testbench here
// or browse Examples
module bcdtoexcess3_tb;

  reg [3:0] a;

  wire [3:0] y;

  bcdtoexcess3 dut(.a(a),
                   .y(y)
                  );

  initial begin
    $dumpfile("bcdtoexcess3.vcd");
    $dumpvars(0, bcdtoexcess3_tb);
    
    a = 3'b0000; 
    #10; 
    a = 4'b0001; 
    #10; 
    a = 4'b0010; 
    #10; 
    a = 4'b0011; 
    #10; 
    a = 4'b0100; 
    #10;
    a = 4'b0101; 
    #10; 
    a = 4'b0110; 
    #10; 
    $finish;
  end
    

  always @*
    $display("a=%b \t y3=%b", a, y);

endmodule
