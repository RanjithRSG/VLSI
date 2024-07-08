// Code your design here
module sram(
  input clk,
  input reset,
  input [8:0]data,
  input [8:0]addr,
  input write,
  input read,
  output reg [8:0]dataout
);
  
  reg [8:0]mem[0:100];
  
  always@(posedge clk)
    begin
      
      if(write) begin
        mem[addr] <= data;
      end
      else
        dataout <= mem[addr];
    end
  
endmodule
