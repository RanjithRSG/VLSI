// Code your design here
module mux2_1(output Z, input I0,I1,Sel);
  wire So,X,Y;
  not(So,Sel);
  and(X,So,I0);
  and(Y,Sel,I1);
  or(Z,X,Y);
endmodule
