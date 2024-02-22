// Code your design here
module halfadder(output S,C,input A,B);
  xor(S,A,B);
  and(C,A,B);
endmodule

