class transaction;
  
  bit clk;
  bit reset;
  bit [8:0]data;
  bit [8:0]addr;
  bit write;
  bit read;
  reg [8:0]dataout;
  
endclass
