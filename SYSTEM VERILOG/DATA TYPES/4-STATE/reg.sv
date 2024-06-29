module reg_top;
  reg[2:0] value;
  initial begin
    $display("default reg value = %0d",value);
    value = 3'b101;
    $display("value of reg is %0d",value);
  end
endmodule
