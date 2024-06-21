// Code your testbench here
// or browse Examples
module test;
  
  int d1[];
  int d[] = '{9,1,8,3,4,4};
  
  initial begin 
    d1 = new[6];
    
    foreach (d1[i])
      begin
        d1[i] = i;
      end
    
    $display(d1,",",d1.size);
    d1.delete();
    d.reverse();
    $display(d);
    d.sort();
    $display(d);
    d.rsort();
    $display(d);
    d.shuffle();
    $display(d);
  end
  
endmodule
    
