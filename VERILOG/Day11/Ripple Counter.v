// Code your design here
module ripple(
  input clk,reset,
  output[3:0] out
);

  wire d0,d01,d1,d11,d2,d21,d3,d31;
  
  dff df1(.d(d01),.clk(clk),.reset(reset),.q(d0),.qo(d01));
  dff df2(.d(d11),.clk(d0),.reset(reset),.q(d1),.qo(d11));
  dff  df3(.d(d21),.clk(d1),.reset(reset),.q(d2),.qo(d21));
  dff df4(.d(d31),.clk(d2),.reset(reset),.q(d3),.qo(d31));
  
  assign out={d31,d21,d11,d01};
 
endmodule

module dff(
  input d,clk,reset,
  output reg q,
  output qo
);

  always@(posedge clk or negedge reset)
  
    if(!reset==0)
      q<=0;
  else 
    q<=1;
  
  assign qo=~q;

endmodule
