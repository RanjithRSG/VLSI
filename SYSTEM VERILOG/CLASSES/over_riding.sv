// Code your testbench here
// or browse Examples
class macklin;
  string place;
  int id;
  int team;
  
  function new();
    place = "erode";
    id = 14;
  endfunction
  
  function void disp();
    $display("PLace = %0s  Id = %od", place, id);
  endfunction
  
endclass

class mirthula extends macklin;
  string place;
  string Team;
  int id;
  
  function new();
    place = "kerala";
    Team = "TEAM 2";    
    id = 22;
  endfunction
  
  function void disp();
    $display("PLACE = %0s Team = %0s, Id = %0d", place, Team, id);
  endfunction
  
endclass

module top;
   
  mirthula m1;
  
  initial
    begin
      m1 = new();
      $display("Before Changing");
      m1.disp();
      m1.Team = "TEAM 4";
      m1.id = 55;
      m1.place = "kochin";
      $display("After changing");
      m1.disp();
    end
  
endmodule
