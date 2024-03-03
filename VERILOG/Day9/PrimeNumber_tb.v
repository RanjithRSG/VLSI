// Code your testbench here
// or browse Examples
module prime_checker_tb;

  reg [32:0] N;
  wire prime;

prime_checker prime_check(
    .N(N),
    .prime(prime)
);

initial begin
    $display("Testing prime_checker module");
    N = 5;
    #10;
    N = 15;
    #10;
    N = 17;
    #10;
    $finish;
end

  always @(*)
    
  $monitor("N = %d, Prime = %d", N, prime);

endmodule
