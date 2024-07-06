class scoreboard;
  transaction pkt;
  mailbox mail;

  function new(mailbox mail);
    this.mail = mail;
  endfunction

  task scor;
    forever #10 begin
      mail.get(pkt);
      if (pkt.count < 10)
        $display("\n\t\t---------TARGET PASSED------");
      else
        $display("\n\t\t---------TARGET FAILED------");
    end
  endtask
endclass
