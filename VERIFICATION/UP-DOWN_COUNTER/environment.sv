`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"

class environment;
  
  transaction pkt;
  mailbox mail;
  generator gen;
  driver driv;
  virtual operation vintf;
  
  function new(virtual operation vintf, mailbox mail);
    this.mail = mail;
    this.vintf = vintf;
  endfunction
  
  task memory;
    mail = new();
    gen = new(mail);
    driv = new(vintf, mail);
  endtask
  
  task run;
    fork
      gen.gene;
      driv.drive;
    join
  endtask
  
endclass
