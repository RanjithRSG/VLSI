// Code your testbench here
// or browse Examples
class copy;
  
  string name;
  int id;
  
  function new();
    name = "vignesh";
    id = 35;
  endfunction
  
  function void display();
        $display("Name = %s  Id = %0d",name, id);
  endfunction
  
endclass

module top;
  
  copy c1;
  copy c2;
  
  initial 
    begin
      c1 = new();
      $display("before name changing");
      c1.display();
      c2 = c1;
      $display("before id changing");
      c2.display();
      c2.name = "karthi";
      c2.id = 05;
      $display("after name changing");
      c1.display();
      $display("after id changing");
      c1.display();
    end
endmodule
