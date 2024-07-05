class generator;
  
  transaction pkt;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  
  task gene;
    repeat(10) begin
      pkt = new();
      pkt.D = 1'b1;
      mail.get(pkt);
      #10;
    end
  endtask
  
endclass
