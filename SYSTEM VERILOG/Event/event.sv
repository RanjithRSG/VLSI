// Code your design here
module event_tb;
  
  event e1;
  
  initial begin
    #10
    $display("Event triggered");
    ->e1;
    $display("Event started");
  end
  
  initial begin
    $display("EVENT");
    @e1;
    $display("Event ended");
  end
  
endmodule
