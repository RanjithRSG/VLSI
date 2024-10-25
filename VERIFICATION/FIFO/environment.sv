`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
class environment;
	generator gnt;
	driver drv;
	monitor mon;
	scoreboard sco;
  mailbox #(transaction) mail;
  mailbox #(transaction) m1;
	event nextgs;
	virtual inter vintf;
	
  function new(virtual inter vintf);
		mail = new();
    gnt = new(mail);
    drv = new(vintf,mail);
		m1 = new();
    mon = new(vintf,m1);
    sco = new(m1);
		this.vintf = vintf;
		//drv.vintf = this.vintf;
		//mon.vintf = this.vintf;
		gnt.next = nextgs;
		sco.next = nextgs;
	endfunction

	task pre_test();
		drv.reset();
	endtask

	task test();
		fork
			gnt.gene();
			drv.driv();
			mon.run();
			sco.run();
        join_any
	endtask

	task post_test();
      wait(gnt.done.triggered);
		$display("-----------------------------------");
		$display("Error count :%0d",sco.err);
		$display("-----------------------------------");
      //#800
		//$finish();
	endtask

	task run();
		pre_test();
		test();
		post_test();
	endtask

endclass

