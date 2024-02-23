// Code your design here
module mux4_1(output Z ,input A,B,C,D,S0,S1);
  wire M,N,O,P,So0,So1;
  not(So0,S0);
  not(So1,S1);
  and(M,A,So0,So1);
  and(N,B,So0,S1);
  and(O,C,S0,So1);
  and(P,D,S0,S1);
  or(Z,M,N,O,P);
endmodule
