// Code your testbench here
// or browse Examples
class data;
  string a;
  const int b=1;//global constant
  
  function new();
    a="team";
  endfunction:new
  
  function void display();
    $display("a=%0s,b=%0d",a,b);
  endfunction:display

endclass:data

module global_class;
  
  data p1;

  initial 
    begin
      p1=new();
      $display("Global Constant"); 
      p1.display();
      $display("Example");
    end

endmodule:global_class
