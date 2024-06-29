// Code your testbench here
// or browse Examples
module typedef_struct;
  
  typedef struct {   
	string name;
	byte dob;
    longint age;
  }personal_details_s;
  
  personal_details_s  details;
  
  initial begin
    
    details.name= "KALIMANI";
    details.dob = 1;
    details.age = 30;
    
    $display("typedef structure example"); 
    $display("details.name = %p" ,details.name); 
    $display("details.dob = %p" ,details.dob);
    $display("details.age = %p" ,details.age);
    
    $display("Bitstream size of personal_details_s: %0d", details);
  end
endmodule
