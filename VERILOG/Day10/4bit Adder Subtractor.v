// Code your design here
module add_sub_4bit(
    input [3:0] A,
    input [3:0] B,
    input sub,    
    output reg[4:0] S,
    output reg C_out 
);

    always @(*) begin
        if (sub) begin
            S = A - B;
            C_out = (A < B) ? 1 : 0; 
        end
        else begin
            S = A + B;
            C_out = (S[4] == 1) ? 1 : 0;
        end
    end

endmodule
