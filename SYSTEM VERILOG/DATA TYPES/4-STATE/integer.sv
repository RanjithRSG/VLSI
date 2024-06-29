module integer_top;
  integer value;
  initial begin
    $display("default integer value = %0d",value);
    value = 32'h6ab9cdef;
    $display("value of integer is %0d",value);
  end
endmodule
