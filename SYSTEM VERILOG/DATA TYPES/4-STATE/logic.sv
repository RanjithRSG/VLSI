module logic_top;
  logic[2:0] value;
  initial begin
    $display("default logic value = %0d",value);
    value = 3'b101;
    $display("value of logic is %0d",value);
  end
endmodule
