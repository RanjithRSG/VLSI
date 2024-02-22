// Code your design here
module halfsub(output D,b ,input A,B);
  xor(D,A,B);
  not(Anot,A);
  and(b,Anot,B);
endmodule
