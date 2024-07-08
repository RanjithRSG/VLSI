class scoreboard;
  
  transaction pkt;
  mailbox mail;
  bit [8:0]mem[8:0];
  
  function new(mailbox mail);
    this.mail =mail;
    foreach(mem[i]) mem[i] = 8'hff;
  endfunction
  
  task score;
    forever #10
      begin
        mail.get(pkt);
        
        if(pkt.write) begin
          if(mem[pkt.addr] != pkt.data)
            $display("n\t\t------FAILED------");
          else
            $display("n\t\t------PASSED------");
        end
        
        else if(pkt.read)
          mem[pkt.addr] = pkt.dataout;
      end
  endtask

endclass
