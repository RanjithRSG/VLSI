class base_class;
  string name;
  
  virtual task example;
    name="SILICON CRAFT STUDENTS NAMES";
  endtask
  
  function void display();
    $display("name=%s",name);
  endfunction
  
endclass

class student1 extends base_class;
  function void display();
    $display("student 1 name is %s",name);
  endfunction
endclass

class student2 extends base_class;
  function void display();
    $display("student 2 name is %s",name);
  endfunction
endclass

class student3 extends base_class;
  function void display();
    $display("student 3 name is %s",name);
  endfunction
endclass

class student4 extends base_class;
  function void display();
    $display("student 4 name is %s",name);
  endfunction
endclass

class student5 extends base_class;
  function void display();
    $display("student 5 name is %s",name);
  endfunction
endclass

class student6 extends base_class;
  function void display();
    $display("student 6 name is %s",name);
  endfunction
endclass
    
module silicon;
  student1 s1=new();
  student2 s2=new();
  student3 s3=new();
  student4 s4=new();
  student5 s5=new();
  student6 s6=new();
  
  initial begin
    
    s1.name="ABINASH";
    s2.name="KHAVYA";
    s3.name="KARTHIKEYAN";
    s4.name="SUDHARSAN";
    s5.name="SURENDHAR";
    s6.name="SIVASARAVANAN";
    s1.display();
    s2.display();
    s3.display();
    s4.display();
    s5.display();
    s6.display();
    
  end
  
endmodule
