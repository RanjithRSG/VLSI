// Code your design here
module for_loop;

  initial 
    begin
    $display("----for loop output ---");
    for (int i=1;i<=5;i++)
      begin
        $display("\t Iteration %0d ",i);
      end
    $display("\n\t ----out of loop----");
    end

endmodule
