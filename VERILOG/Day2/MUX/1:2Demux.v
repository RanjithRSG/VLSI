// Code your design here
module demux1_2(output Y0,Y1 ,input I,S);
  wire x,Sn;
  not(Sn,S);
  and(Y0,Sn,I);
  and(Y1,S,I);
endmodule
