// Code your design here
module btog(output g1,g2,g3,g4 ,input b1,b2,b3,b4);
  buf(g1,b1);
  xor(g2,b1,b2);
  xor(g3,b2,b3);
  xor(g4,b3,b4);
endmodule
