// Code your testbench here
// or browse Examples
class base_class;
  string fan,switch;

  function void display();
    switch="ON";
    $display("Switch is %0s", switch);
  endfunction
  
endclass

class sub_class extends base_class;
  string fan="Rotating";
  
  function void display();
    super.display;
    $display("that's why fan is %s \n" ,fan);
  endfunction:display

endclass:sub_class

sub_class s1;

module super_example;

  initial begin
    s1 =new();
    s1.display();   
  end

endmodule
