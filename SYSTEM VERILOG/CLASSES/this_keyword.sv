// Code your testbench here
// or browse Examples
class top;
  
  string name;
  int id;
  
  function void details();
    string name = "KALIMANI";
    int id = 121;
    this.name = name;
    this.id = id;
  endfunction
  
endclass

module student;
  
  top s1;
  
  initial begin
    
    s1 = new();
    s1.details;
    $display("Student Details Name = %0s Id = %0d",s1.name, s1.id);
  end
endmodule
