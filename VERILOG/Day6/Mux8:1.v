// Code your design here
module mux8to1 (
    input [7:0] a,
    input [2:0] sel,
    output reg out
);

  wire [3:0] mux1_out;
  wire [3:0] mux2_out;
  
  mux4to1 m1 (a[7:4], sel[1:0], mux1_out);
  mux4to1 m2 (a[3:0], sel[1:0], mux2_out);
  mux2to1 m3 (mux1_out, mux2_out, sel[2], out);
  
endmodule

module mux4to1 (
    input [3:0] a,
    input [1:0] sel,
    output reg out
);

  always @* begin
    case(sel)
      2'b00: out = a[0];
      2'b01: out = a[1];
      2'b10: out = a[2];
      2'b11: out = a[3];
      default: out = 1'b0;
    endcase
  end
  
endmodule

module mux2to1 (
    input [3:0] a,
    input [3:0] b,
    input sel,
    output reg out
);

  always @* begin
    if(sel)
      out = b;
    else
      out = a;
  end
  
endmodule
