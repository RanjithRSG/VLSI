class driver;
  
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf, mailbox mail);
    this.vintf = vintf;
    this.mail = mail;
  endfunction
  
  task drive;
    pkt = new();
    mail.put(pkt);
    pkt.count = vintf.count;
    #10;
  endtask
  
endclass
