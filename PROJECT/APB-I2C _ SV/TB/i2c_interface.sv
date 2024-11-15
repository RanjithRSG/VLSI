interface i2c;
  
  logic scl_pad_i;     //SCL input
  logic scl_pad_o;     //SCL output
  logic scl_padoen_o;  //SCL pad direction
  logic sda_pad_i;     //SDA input
  logic sda_pad_ou;    //SDA output
  logic sda_padoen_o;  //SDA pad direction
  logic interrupt_o;   //Event
  
endinterface
