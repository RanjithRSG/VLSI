// Code your testbench here
// or browse Examples
class para #(parameter WIDTH = 3);
  bit [WIDTH - 1:0] data_1 ;
  bit [WIDTH - 1:0] data_2 ;
  
  function new();
    data_1 = 3;
    data_2 = 15;
  endfunction
  
  function void disp();
    $display("data_1 = %0d  data_2 = %0d", data_1, data_2);
  endfunction
  
endclass

module test;
  
  para p;
  
  initial 
    begin
      p = new();
      $display("Parameterized by values");
      p.disp();
    end
  
endmodule
