class monitor;
  transaction pkt;
  virtual operation vintf;
  mailbox mail;

  function new(virtual operation vintf, mailbox mail);
    this.mail = mail;
    this.vintf = vintf;
  endfunction

  task monit;
    forever begin
      #10;
      pkt = new();
      pkt.clk = vintf.clk;
      pkt.reset = vintf.reset;
      pkt.count = vintf.count;
      mail.put(pkt);
    end
  endtask
endclass
