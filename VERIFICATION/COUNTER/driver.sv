class driver;
  transaction pkt;
  mailbox mail;
  virtual operation vintf;

  function new(virtual operation vintf, mailbox mail);
    this.mail = mail;
    this.vintf = vintf;
  endfunction

  task drive;
    repeat (10) begin
      mail.get(pkt);
      vintf.count = pkt.count;
      #10;
    end
  endtask
endclass
