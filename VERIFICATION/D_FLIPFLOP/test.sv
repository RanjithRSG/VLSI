`include "environment.sv"

class DFFtest;
  
  environment envir;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf, mailbox mail);
    this.vintf = vintf;
    this.mail = mail;
  endfunction
  
  task memory;
    mail = new();
    envir = new(vintf,mail);
  endtask
  
  task run;
    fork
      envir.memory;
      envir.run;
    join
  endtask
  
endclass
