class generator;
  
  transaction pkt;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  
  task gene;
    pkt = new();
    pkt.data = 8'b111;
    pkt.addr = 8'b1111;
    mail.put(pkt);
    $display("d=%d, a=%d",pkt.data, pkt.addr);
    #20;
  endtask
  
endclass
