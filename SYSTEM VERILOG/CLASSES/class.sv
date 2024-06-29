// Code your testbench here
// or browse Examples
class home;
  
  string light;  
  int fan;  
  string switch;
  
  task supply();
    fan = "ON";
    light  = "OFF";
    switch = "ON";
    $display("Switch is %0s so electricity is open", switch);  
  endtask

endclass

module check_electricity;  

  initial begin
    home h;
    h = new();
    h.supply;
    $display("In home fan = %0s light = %0s switch =  %0p", h.fan, h.light, h.switch);
  end

endmodule
