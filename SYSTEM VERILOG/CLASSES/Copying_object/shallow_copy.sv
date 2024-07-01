// Code your testbench here
// or browse Examples
class student;
  
  string name;
  int id;

  function new();
    name = "kali";
    id = 81;
  endfunction:new

  function void display();
    $display("\t name = %0s,\t id = %0d",name, id);
  endfunction

endclass

module shallow;
  
  student s1;
  student s2;

  initial begin
    
    s1 = new();
    $display("contents of s1 befor chnages");
    s1.display();
    s2 = new s1;
    $display("contents of s2 before changes");
    s2.display();
    s2.name ="vicky";
    $display("contents of s1 after changes");
    s1.display();
    $display("contents of s2 after changes");
    s2.display();
  end

endmodule
