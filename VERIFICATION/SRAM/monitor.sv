class monitor;
  
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf, mailbox mail);
    this.mail = mail;
    this.vintf = vintf;
  endfunction
  
  task monit;
    forever #10 
      begin
        pkt = new();
        pkt.clk=vintf.clk;
        pkt.reset=vintf.reset;
        pkt.data=vintf.data;
        pkt.addr=vintf.addr;
        pkt.write=vintf.write;
        pkt.read=vintf.read;
        pkt.dataout=vintf.dataout;
        mail.put(pkt);
      end
  endtask
  
endclass
