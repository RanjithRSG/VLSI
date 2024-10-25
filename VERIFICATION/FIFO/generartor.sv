`include "transaction.sv"    
class generator;

	transaction pkt;                            
    mailbox #(transaction) mail;               
	int count = 0;                              
	int i = 0;                                  

	event next;                                 
	event done;                                 

  function new(mailbox #(transaction) mail);
		this.mail=mail;
		
	endfunction

	task gene();
      pkt = new();
		repeat(count)
		begin
          assert(pkt.randomize) else $error("randomized failed");
			i++;
          mail.put(pkt);
          $display("[GEN] : oper : %0d iteration : %0d",pkt.oper,i);
			@(next);
          -> done;
         // #10;
          
		end 
      
	endtask

endclass
