// Code your design here
module comparator(
  input [3:0] A ,B ,
  output reg AgrtB, AlessB, AeqB);
  
  always@* begin
    AgrtB = 0;
    AlessB = 0;
    AeqB = 0;
    if(A>B)
      AgrtB = 1'b1;
    
    else if(A<B)
      AlessB = 1'b1;
    
    else
      AeqB = 1'b1;
  end
  
endmodule
