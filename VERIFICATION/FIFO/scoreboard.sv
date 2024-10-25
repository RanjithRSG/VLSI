class scoreboard;

  mailbox #(transaction) mail;
	transaction pkt;
	event next;
  bit [7:0]dinn[$];
	bit [7:0]temp;
	int err = 0;
	
  function new(mailbox #(transaction) mail);
		this.mail = mail;
	endfunction

	task run();
      pkt = new();
		forever begin
          mail.get(pkt);
          $display("[SCO] : wr:%0d rd:%0d din:%0d dout:%0d full:%0d empty:%0d", pkt.wr, pkt.rd, pkt.din, pkt.dout, pkt.full, pkt.empty);

          if(pkt.wr == 1'b1) begin
            if(pkt.full == 1'b0) begin
              dinn.push_front(pkt.din);
              $display("[SCO] : data stored in queue :%0d", pkt.din);
				end
				else $display("[SCO] : FIFO is full");
				$display("------------------------------------");
			end

          if(pkt.rd == 1'b1) begin
            if(pkt.empty == 1'b0) begin
					temp = dinn.pop_back();

              if(pkt.dout == temp)
						$display("[SCO] : data match");
					else begin
						$error("[SCO] : data mismatch");
						err++;
					end
				end
				else $display("[SCO] : fifo is empty");
				$display("------------------------------------");
				end
				->next;
          //#10;
        end
	endtask

endclass

	
