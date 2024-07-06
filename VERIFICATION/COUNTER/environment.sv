`include "agent.sv"
`include "scoreboard.sv"

class environment;
  virtual operation vintf;
  mailbox mail;
  mailbox mbox;
  agent agen;
  scoreboard score;

  function new(virtual operation vintf, mailbox mail, mailbox mbox);
    this.mail = mail;
    this.mbox = mbox;
    this.vintf = vintf;
  endfunction

  task memory;
    agen = new(vintf, mail, mbox);
    score = new(mbox);
    agen.memory();
  endtask

  task run;
    fork
      agen.run();
      score.scor();
    join
  endtask
endclass
