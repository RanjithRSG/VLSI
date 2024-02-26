// Code your design here
module Excess3toBCD(y, a);
  
  input [3:0] y;
  
  output [3:0] a;
  
  assign a[3] = ((y[0] & y[1]) | (y[0] & y[2] & y[3]));
  
                 assign a[2] = (((~y[1]) & (~y[2])) | ((~y[1]) & (~y[3])) | (y[1] & y[2] & y[3]));
  
                 assign a[1] = (((~y[2]) & y[3]) | (y[2] & (~y[3])));
  
                 assign a[0] = ~y[3];

endmodule

  
