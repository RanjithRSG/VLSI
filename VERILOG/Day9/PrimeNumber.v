// Code your design here
module prime_checker(
    input wire [31:0] N,
    output reg prime
);

reg [31:0] i;

always @(*) begin
    prime = 1;
    if (N <= 1) begin
        prime = 0;
    end
    else begin
        for (i = 2; i <= N/2; i = i + 1) begin
            if (N % i == 0) 
                prime = 0; 
        end
    end
end

endmodule
