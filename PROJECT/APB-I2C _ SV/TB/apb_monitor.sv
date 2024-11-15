class apb_monitor;
  
  virtual apb_interface vintf;
  apb_transaction pkt;
  mailbox mail;
  
  function new(mailbox mail, virtual apb_interface vintf);
    this.mail = mail;
    this.vintf = vintf;
  endfunction
  
  task run;
    forever begin
      
      @(posedge vintf.HCLK);
      pkt = new();
      if(vintf.PENABLE && vintf.PREADY && vintf.PSEL) begin
        pkt.PADDR = vintf.PADDR;
        pkt.PWRITE = vintf.PWRITE;
        
        if(vintf.PWRITE && (vintf.PADDR == 'h08)) begin
          vintf.PWDATA = pkt.PWDATA;
          mail.put(pkt);
        end

        else if(!vintf.PWRITE && (vintf.PADDR == 'h0C)) begin
          pkt.PRDATA = vintf.PRDATA;
          mail.put(pkt);
        end
      end
    end
  endtask
  
endclass
