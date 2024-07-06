`include "environment.sv"

class counter_tt;
  
  environment envir;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf, mailbox mail);
    this.mail = mail;
    this.vintf = vintf;
  endfunction
  
  task memory;
    mail = new();
    envir = new(vintf, mail);
  endtask
  
  task run;
    fork
      envir.memory;
      envir.run;
    join
  endtask
  
endclass
