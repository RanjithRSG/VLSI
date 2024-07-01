// Code your testbench here
// or browse Examples
class top;
  string place;
  int days;
  
  function new();
    place = "Banglore";
    days = 10;
  endfunction
  
  function void disp();
    $display("\t place = %0s,\t days = %0d", place, days);
  endfunction

  function void deep(top copy);//copy
    this.place = copy.place;
    this.days = copy.days;
  endfunction

endclass

module deep;
  
  top t1;
  top t2;

  initial 
    begin
      t1 = new();
      t2 = new();
      t2.deep(t1);//deep copy
      $display("contents of branch t1 before changes");
      t1.disp();
      $display("contents of branch t2 before changes");
      t2.disp();
      t1.place = "Manipal";
      t2.place = "Hyderabad";
      $display("contents of branches t1 after changes");
      t1.disp();
      $display("contents of branches t2 after changes");
      t2.disp(); 
    end

endmodule
