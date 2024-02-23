// Code your design here
module demux1_8(output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7 ,input I,S1,S2,S3);
  wire So1,So2,So3,x,y,z;
  not(So1,S1);
  not(So2,S2);
  not(So3,S3);
  and(Y0,S1,S2,S3);
  and(Y1,S1,S2,So3);
  and(Y2,S1,So2,S3);
  and(Y3,S1,So2,So3);
  and(Y4,So1,S2,S3);
  and(Y5,So1,S2,So3);
  and(Y6,So1,So2,S3);
  and(Y7,So1,So2,So3);
endmodule
  
