// Code your testbench here
// or browse Examples
module add_sub_4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg sub;

    wire [4:0] S;
    wire C_out;

    add_sub_4bit dut (
        .A(A),
        .B(B),
        .sub(sub),
        .S(S),
        .C_out(C_out)
    );

    initial begin
    
        A = 4'b0010;
        B = 4'b0011;
        sub = 0;
        #10
        
        A = 4'b0110;
        B = 4'b0011;
        sub = 1;
        #10
        
        $finish;
    end
    
  always@(*)
    
    $monitor("A=%b B=%b S=%b C_out=%b",A,B,S,C_out);
  
endmodule
