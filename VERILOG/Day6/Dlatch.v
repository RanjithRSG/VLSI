// Code your design here
module Dlatch(input d,
              input en,
              input reset,
              output reg y
             );
  always@*
    if(!reset)
      y <= 0;
  
  else if (en)
    y <= d;
  
endmodule	
