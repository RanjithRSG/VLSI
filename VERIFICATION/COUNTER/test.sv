`include "environment.sv"

class count_test;
  environment envir;
  virtual operation vintf;
  mailbox mail;
  mailbox mbox;

  function new(virtual operation vintf, mailbox mail, mailbox mbox);
    this.vintf = vintf;
    this.mbox = mbox;
    this.mail = mail;
  endfunction

  task memory;
    envir = new(vintf, mail, mbox);
    envir.memory();
  endtask

  task run;
    fork
      envir.run();
    join;
  endtask
endclass
