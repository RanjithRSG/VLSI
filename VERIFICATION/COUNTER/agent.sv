`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"

class agent;
  transaction pkt;
  mailbox mail;
  mailbox mbox;
  generator gen;
  driver driv;
  monitor moni;
  virtual operation vintf;

  function new(virtual operation vintf, mailbox mail, mailbox mbox);
    this.mail = mail;
    this.mbox = mbox;
    this.vintf = vintf;
  endfunction

  task memory;
    gen = new(mail);
    driv = new(vintf, mail);
    moni = new(vintf, mbox);
  endtask

  task run;
    fork
      gen.gene();
      driv.drive();
      moni.monit();
    join
  endtask
endclass
