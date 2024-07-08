`include "environment.sv"

class sram_test;
  
  environment envi;
  mailbox mail;
  mailbox mbox;
  virtual operation vintf;
  
  function new(virtual operation vintf, mailbox mail, mailbox mbox);
    this.mail = mail;
    this.mail = mbox;
    this.vintf = vintf;
  endfunction
  
  task memory;
    mail = new();
    envi = new(vintf, mail, mbox);
  endtask
  
  task run;
    fork
      envi.memory;
      envi.run;
    join
  endtask
  
endclass
