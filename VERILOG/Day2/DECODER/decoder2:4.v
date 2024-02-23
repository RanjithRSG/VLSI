// Code your design here
module decoder2to4(output y0,y1,y2,y3 ,input A,B,En);
  wire en,An,Bn;
  
  not(en,En);
  not(An,A);
  not(Bn,B);
  
  nand n0(y0,en,An,Bn);
  nand n1(y1,en,An,B);
  nand n2(y2,en,A,Bn);
  nand n3(y3,en,A,B);
endmodule
