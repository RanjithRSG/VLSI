// Code your testbench here
// or browse Examples
module bcd_adder_tb;

    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    wire [3:0] sum;
    wire carry;

    bcd_adder bcd_adder(
        .a(a), 
        .b(b), 
        .cin(cin), 
        .sum(sum), 
        .carry(carry)
    );
  
  initial begin
    $dumpfile("bcd_adder.vcd");
    $dumpvars(1,bcd_adder_tb);
  end

    initial begin
        a = 0;  b = 0;  cin = 0;
      #100;
        a = 6;  b = 9;  cin = 0;
      #100;
        a = 3;  b = 3;  cin = 1;
      #100;
        a = 4;  b = 5;  cin = 0;
      #100;
        a = 8;  b = 2;  cin = 0;
      #100;
        a = 9;  b = 9;  cin = 1;
      #100;
      $finish;
    end
  
  always@*
    $monitor("time=%0t \tINPUT VALUES: \t a=%b b=%b cin=%b\t OUTPUT VALUES sum = %b \t carry=%b",$time,a,b,cin,sum,carry,);
      
endmodule
