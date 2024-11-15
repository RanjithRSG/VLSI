`include "apb_transaction.sv"
`include "apb_generator.sv"
`include "apb_driver.sv"
`include "apb_monitor.sv"
// `include "scoreboard.sv"

class environment;
  
  apb_transaction pkt;
  apb_generator apb_gene;
  apb_driver driv;
  apb_monitor moni;
//   scoreboard score;
  mailbox mail;
  mailbox mbox;
  virtual apb_interface vintf;
  
  function new( mailbox mail, mailbox mbox, virtual apb_interface vintf);
    this.mail  = mail;
    this.mbox  = mbox;
    this.vintf = vintf;
  endfunction
  
  task memory; 
    pkt      = new();
    apb_gene = new(mail);
    driv     = new(mail, vintf);
    moni     = new(mail, vintf);
//     score    = new(mail, mbox);
  endtask
  
  task run;
    fork
      apb_gene.gene;
      driv.run;
      moni.run;
//       score.run;
    join
  endtask
  
endclass
