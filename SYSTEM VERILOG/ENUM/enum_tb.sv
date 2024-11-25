// Code your testbench here
// or browse Examples
module tb_fsm_example;
  
    logic clk;
    logic rst_n;
    logic start;
    logic done;
  
    fsm_example uut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .done(done)
    );
    always #5 clk = ~clk;
  
    initial begin
      clk = 0;
      rst_n = 0;
      start = 0;
      #10 
      rst_n = 1; // Release reset
      #10 start = 1;
      #10 start = 0; 
      wait (done);
      #10;
      $finish;
    end

    initial begin
        $monitor($time, " clk=%b, rst_n=%b, start=%b, done=%b", clk, rst_n, start, done);
    end
endmodule
