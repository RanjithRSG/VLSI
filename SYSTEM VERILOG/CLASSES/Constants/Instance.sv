// Code your testbench here
// or browse Examples
class data;
  
  const int a;
  string b;
  
  function new();
    a = 5;
    b = "ANBELLA";
  endfunction:new
  
  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction:display

endclass

module instance_class;
  
  data t1;
  
  initial 
    begin
      t1=new();
      t1.b="bjt";
      $display("INSTANCE VARIABLE");
      t1.display();
      $display("Example");
    end

endmodule
