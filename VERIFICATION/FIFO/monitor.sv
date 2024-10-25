class monitor;

	virtual inter vintf;
  mailbox #(transaction) mail;
	transaction pkt;

  function new(virtual inter vintf,mailbox #(transaction) mail);
    this.vintf=vintf;
		this.mail = mail;
	endfunction

	task run();
		pkt = new();

		forever begin
          repeat(2) @(posedge vintf.clk);
			pkt.wr = vintf.wr;
			pkt.rd = vintf.rd;
			pkt.din = vintf.din;
			pkt.full = vintf.full;
			pkt.empty = vintf.empty;
			@(posedge vintf.clk);
			pkt.dout = vintf.dout;

          mail.put(pkt);
          $display("[MON] : wr:%0d rd:%0d din:%0d dout:%0d full:%0d empty:%0d",pkt.wr, pkt.rd, pkt.din, vintf.dout, pkt.full, pkt.empty);
          //#20;
		end

	endtask

endclass



