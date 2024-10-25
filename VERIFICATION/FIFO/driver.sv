class driver;

	virtual inter vintf;                           
    mailbox #(transaction) mail;               
	transaction pkt;                            

  function new(virtual inter vintf,mailbox #(transaction) mail);
        this.vintf = vintf;
		this.mail = mail;
	endfunction

	task reset();
		vintf.rst <= 1'b1;
		vintf.rd  <= 1'b0;
		vintf.wr  <= 1'b0;
		vintf.din <= 0;
      repeat(5) @(posedge vintf.clk);
		vintf.rst <= 1'b0;
		$display("[DRV] : DUT reset done");
		$display("-------------------------------------");
	endtask

	task write();
      @(posedge vintf.clk);
		vintf.rst <= 1'b0;
		vintf.rd  <= 1'b0;
		vintf.wr  <= 1'b1;
		vintf.din <= $urandom_range(1, 10);
      @(posedge vintf.clk);
		vintf.wr <= 1'b0;
      $display("[DRV] : Data write data : %0d",vintf.din);
      @(posedge vintf.clk);
	endtask

	task read();
      @(posedge vintf.clk);
		vintf.rst <= 1'b0;
		vintf.rd  <= 1'b1;
		vintf.wr  <= 1'b0;
      @(posedge vintf.clk);
		vintf.rd <= 1'b0;
		$display("[DRV] : data read");
      @(posedge vintf.clk);
	endtask

	task driv();
		forever
      begin
			mail.get(pkt);
			if(pkt.oper == 1'b1)
				write();
			else
				read();
         // #10;
		end
	endtask

endclass
