// Code your testbench here
// or browse Examples
module mux8_tb();
  
  reg [7:0] a;
  reg [2:0] sel;
  wire out;
  
  mux8to1 uut(a, sel, out);
  
  initial begin 
    $dumpfile("mux8to1.vcd");
    $dumpvars(1, mux8_tb);
    
    a = 8'b0000_1010;
    sel = 3'b000;
    #10
    sel = 3'b001;
    #10
    sel = 3'b010;
    #10
    sel = 3'b011;
    #10
    sel = 3'b100;
    #10
    sel = 3'b101;
    #10
    sel = 3'b110;
    #10
    sel = 3'b111;
    #10
    $finish;
  end
  
  always @*
    $monitor("time=%0t \tINPUT VALUES: \ a=%b sel=%b  \t OUTPUT VALUES out=%b", $time, a, sel, out);
    
endmodule
