class apb_transaction;
  
  logic PSEL;
  logic PWRITE;
  logic PENABLE;
  logic PREADY;
  rand logic [31:0] PADDR;
  rand logic [31:0] PWDATA;
  rand logic [31:0] PRDATA;
  
  bit [7:0] sts_read_data;
  
  rand logic [31:0] Prescale_addr;
  rand logic [31:0] Control_addr;
  rand logic [31:0] Transmit_addr;
  rand logic [31:0] Receive_addr;
  rand logic [31:0] Command_addr;
  rand logic [31:0] Status_addr;
  
  constraint pre_addr {Prescale_addr =='h00;}
  constraint ctl_addr {Control_addr == 'h04;}
  constraint trans_addr {Transmit_addr =='h08; }
  constraint recv_addr {Receive_addr == 'h0C;}
  constraint cmd_addr {Command_addr  =='h10;}
  constraint sts_addr {Status_addr =='h14;}
  
  rand logic [7:0] Prescale_data;
  rand logic [7:0] Control_data;
  rand logic [7:0] Start_cmd;
 rand logic [7:0] Stop_cmd;
 rand logic [7:0] Read_cmd;
  rand logic [7:0] Write_cmd;
  rand logic [7:0] Status_data;
  
  rand bit operation;
  constraint cons{ operation ==1;}
  rand logic [31:0] addr_to_write;
  rand logic [31:0] data_to_write;
  
  constraint pre_data{Prescale_data == 8'b00000101;}
  constraint ctrl_data{Control_data == 8'b11000000;}
  constraint cmd_st{Start_cmd == 8'b10000001;}
  constraint cmd_sp{Stop_cmd == 8'b01000001;}
  constraint cmd_rd{Read_cmd == 8'b00100001;}
  constraint cmd_wr{Write_cmd == 8'b00010001;}
  constraint sts_data{Status_data == 8'b11010011;}

endclass
