// Code your design here
module fd(output So, Co, input A, B, Cin);
  wire x, y, z;
  hf hfd1(.sum(x),.carry(y),.a(A),.b(B));
  hf hfd2(.sum(So),.carry(z),.a(x),.b(Cin));
  or(Co,y,z);
endmodule
module hf(output sum, carry, input a, b);
  xor(sum,a,b);
  and(carry,a,b);
endmodule
