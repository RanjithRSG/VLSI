// Code your design here
module bcdtoexcess3(a,y);
  
  input [3:0] a;
  
  output [3:0] y;
  
  assign y[3] = (a[0] | (a[1] & a[2]) | (a[1] & a[3]));
  
  assign y[2] = (((~a[1]) & a[2]) | ((~a[1]) & a[3]) | (a[1] & (~a[2]) & (~a[3])));
  
  assign y[1] = ((a[2] & a[3]) | ((~a[2]) & (~a[3])));
  
  assign y[0] = ~a[3];

endmodule
