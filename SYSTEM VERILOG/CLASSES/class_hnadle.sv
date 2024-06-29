// Code your testbench here
// or browse Examples
class home;
  
  bit light;
  int fan ;
  string switch;
  
  task open_electricity();
    switch = "ON";
    $display("switch is %s so electricity is open",switch);
  endtask
  
endclass

module tb;
  
  home h1;
  
  initial begin
    
    h1 = new();// if this is not given object will be null
    
    $display("Let's declare handle");
    $display("Check wheather the object is created or not");
    if (h1 == null)    
      $display("object is empty");
    else
      $display("object is not empty");
  end

endmodule
