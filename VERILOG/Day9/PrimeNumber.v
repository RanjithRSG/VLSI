// Code your design here
module prime_checker(
    input wire [32:0] N,
    output reg prime
);

always @(*) begin
    integer i;
    prime = 1;
  
    if (N <= 1)
        prime = 0;
  
    else if (N <= 3)
        prime = 1;
  
    else if((N % 2 == 0) || (N % 3 == 0))
        prime = 0;
  
    else
        for (i = 5; i * i <= N; i = i + 1) begin
            if (N % i == 0) begin
                prime = 0;
                break;
            end
        end
end

endmodule

