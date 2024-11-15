//`include "apb_transaction.sv"
`include "environment.sv"

class test_top;
  
  environment envi;
  mailbox mail;
  mailbox mbox;
  virtual apb_interface vintf;
  
  function new(mailbox mail, mailbox mbox, virtual apb_interface vintf);
    this.mail = mail;
    this.mbox = mbox;
    this.vintf = vintf;
  endfunction
  
  task memory;
    envi = new(mail, mbox, vintf);
  endtask
  
  task run;
    fork
      envi.run;
      envi.memory;      
    join
  endtask
  
endclass
