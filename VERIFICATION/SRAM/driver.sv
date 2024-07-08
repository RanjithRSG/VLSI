class driver;
  
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf, mailbox mail);
    this.mail = mail;
    this.vintf = vintf;
  endfunction
  
  task drive;
    pkt = new();
    mail.get(pkt);
    vintf.data = pkt.data;
    vintf.addr = pkt.addr;
    vintf.reset = pkt.reset;
    vintf.write = 1'b1;
    #20;
    vintf.read = 1'b0;
    #30;
    vintf.write = 1'b0;
    #20;
    vintf.read = 1'b1;
    pkt.dataout = vintf.dataout;
  endtask
  
endclass
