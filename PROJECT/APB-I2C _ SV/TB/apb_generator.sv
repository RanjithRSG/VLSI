class apb_generator;
  
  apb_transaction pkt;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  
  task gene;
    pkt = new();
    pkt.randomize();
    mail.put(pkt);
    $display("----****Randomization Success***----");
  endtask
  
endclass
