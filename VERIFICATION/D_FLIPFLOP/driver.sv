class driver;
  
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf, mailbox mail);
    this.vintf = vintf;
    this.mail = mail;
  endfunction
  
  task drive;
    repeat(10) begin
      pkt = new();
      mail.put(pkt);
      vintf.D = pkt.D;
      #10;
      pkt.Q = vintf.Q;
      #20;
    end
  endtask
  
endclass
