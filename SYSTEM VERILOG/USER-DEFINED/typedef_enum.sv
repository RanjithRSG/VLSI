// Code your testbench here
// or browse Examples
module typedef_enum;
  
  typedef enum{
    RORITO, 
    FLAIRFX, 
    REYNOLDS
  }e_pen;
  
  initial begin
    
    e_pen pen;
    pen = RORITO;
    $display("typedef enum example");
    $display("pen = %s",pen);
  end
endmodule

