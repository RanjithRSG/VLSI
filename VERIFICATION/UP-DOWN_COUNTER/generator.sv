class generator;
  
  transaction pkt;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  
  task gene;
    pkt = new();
    pkt.randomize;
    mail.get(pkt);
    #10;
  endtask
  
endclass
