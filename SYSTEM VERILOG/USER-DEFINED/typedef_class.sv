// Code your testbench here
// or browse Examples
typedef class fruit2;

class fruit1;
  fruit2 f;
endclass

class fruit2;
  fruit1 f;
endclass

module typedef_class;
  
  initial begin
    fruit1 class1;
    fruit2 class2;
    
    $display("typedef class example");
    $display("fruit2 class use typedef to avoid error");
    
  end
  
endmodule
