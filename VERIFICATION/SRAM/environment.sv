`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  
  transaction pkt;
  generator gen;
  driver driv;
  monitor moni;
  scoreboard scor;
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
    mbox = new();
    gen = new(mail);
    driv = new(vintf, mail);
    moni = new(vintf, mbox);
    scor = new(mbox);
  endtask
  
  task run;
    fork
      gen.gene;
      driv.drive;
      moni.monit;
      scor.score;
    join
  endtask
  
endclass
