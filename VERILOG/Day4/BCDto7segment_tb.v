// Code your testbench here
// or browse Examples
module bcdto7segment_tb;
  reg [3:0] bcd;
    wire [6:0] seg;
    integer i;
  
  bcdto7segment bcdto7segment(
        .bcd(bcd), 
        .seg(seg)
  );
  
  initial begin
    $dumpfile("bcdto7segment.vcd");
    $dumpvars(1,bcdto7segment_tb);
  end
  
  initial begin
    for(i = 0;
        i < 16;
        i = i+1
       ) 
        begin
          bcd = i;
          #10; 
        end
    $finish;
  end
  
  always@*
    $monitor("time=%0t \tINPUT VALUES: \t bcd=%b  \t OUTPUT VALUES seg=%b",$time,bcd,seg);
  
endmodule
