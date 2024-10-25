class transaction;
  
  rand bit oper;  
  bit rd,wr;     
  bit [7:0]din;  
  bit full, empty;  
  reg [7:0]dout;  
  bit rst;
  bit clk;
  
  constraint oper_ctrl {oper dist {1 :/ 50, 0 :/ 50};}

endclass

