// Code your design here
module fsub(output Do, bo, input A, B, C);
  wire x, y, z;
  hsub hsub1(.Diff(x),.borrow(y),.a(A),.b(B));
  hsub hsub2(.Diff(Do),.borrow(z),.a(x),.b(C));
  or(bo,y,z);
endmodule
module hsub(output Diff, borrow, input a, b);
  xor(Diff,a,b);
  not(Anot,a);
  and(borrow,Anot,b);
endmodule
