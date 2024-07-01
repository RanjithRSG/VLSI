class parent;
   int a;
   function new();
      a = 1;
   endfunction
   extern function void display();
endclass:parent

class child extends parent;
   int b;
   function new();
      b = 2;
   endfunction
   extern function void display();
endclass:child

function void parent::display();
   $display("a = %0d",a);
endfunction

function void child::display();
   super.display(); // Super is a keyword used to get the method of same name from extended class.
   $display("b = %0d",b);
endfunction

module basic_chain_construct();
   child c;
   initial begin
      c = new;
      c.display();
   end
endmodule:basic_chain_construct
