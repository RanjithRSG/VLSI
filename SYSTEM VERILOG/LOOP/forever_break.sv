// Code your testbench here
// or browse Examples
module forever_loop;
  int a; 
  initial 
  begin 
    $display("----forever loop----");

    forever
    begin
      $display("@ %0d ns Iteration %0d",$time,a);
      a++;
      #4;
      if(a>8)
        break;

    end
    $display("@ %0d ns Stopped using break",$time);
  end

endmodule
