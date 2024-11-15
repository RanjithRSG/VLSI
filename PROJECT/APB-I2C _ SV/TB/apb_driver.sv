class apb_driver;
  
  apb_transaction pkt;
  mailbox mail;
  virtual apb_interface vintf;
  
  function new(mailbox mail, virtual apb_interface vintf);
    this.mail = mail;
    this.vintf = vintf;
  endfunction
  
  task run;
    forever begin
      pkt = new();
      mail.get(pkt);
      $display("========");
      Prescale();
      $display("========");
    end
  endtask
  
  task reset();
    vintf.HRESETn <= 1;
    vintf.PENABLE <= 0;
    vintf.PSEL <= 0;
    vintf.PWRITE <= 0;
    #25;
    vintf.HRESETn <= 0;
  endtask
  
  task Prescale();
    @(posedge vintf.HCLK);
    vintf.PENABLE <= 1;
    vintf.PSEL <= 1;
    vintf.PWRITE <= 1;
    vintf.PADDR = pkt.Prescale_addr;
    vintf.PWDATA = pkt.Prescale_data;
    $display("PRESCALE REGISTER ADDR = %0b DATA = %0b",pkt.Prescale_addr, pkt.Prescale_data);
    @(posedge vintf.HCLK);
    Enable();
  endtask
  
  task Enable();
    @(posedge vintf.HCLK);
    vintf.PADDR = pkt.Control_addr;
    vintf.PWDATA = pkt.Control_data;
    $display("CONTROL REGISTER ADDR = %0b DATA = %0b", pkt.Control_addr, pkt.Control_data);
    if(pkt.operation == 0)begin
      Write();
      end
    else
      Read();
  endtask
  
  task Write();
    $display("----****WRITE OPERATION STARTED****----");
    @(posedge vintf.HCLK);
    vintf.PENABLE <= 0;
    vintf.PWRITE <= 0;
    vintf.PADDR <= 0;
    vintf.PWDATA <= 0;
    
    
    @(posedge vintf.HCLK);           // start
    vintf.PADDR = pkt.Control_addr;
    vintf.PWDATA = pkt.Start_cmd;
    $display("START WRITE OPREATION : PADDR = %0b  PWDATA = %0b", pkt.Control_addr, pkt.Start_cmd);
    
    @(posedge vintf.HCLK);          // WRITE
    vintf.PADDR = pkt.Transmit_addr;
    vintf.PWDATA = 8'b11100011;
    $display("WRITE ADDERSS : PADDR = %0b PWDATA = %0b", pkt.Command_addr, vintf.PWDATA);
    
    @(posedge vintf.HCLK);         // ACK
    vintf.PADDR = pkt.Status_addr;
    vintf.PWDATA = 0;
    $display("ACK BIT : PADDR = %0b", pkt.Status_addr);
    
    do begin
      @(posedge vintf.HCLK);
      pkt.sts_read_data = vintf.PRDATA;
    end
    while((pkt.sts_read_data[0] == 1 && pkt.sts_read_data[7] == 0));
      #5;
    $display("DRIVE WRITE : INTERRUPT RECEIVER FOR WRITE");
    
    @(posedge vintf.HCLK);        // write to bus
      vintf.PWRITE <= 1;
    vintf.PADDR = pkt.Command_addr;
    vintf.PWDATA = pkt.Write_cmd;
    $display("WRITE DATA : PADDR = %0b PWDATA = %0b", pkt.Command_addr, pkt.Write_cmd);
    
    @(posedge vintf.HCLK);      // Acknowledgement
    vintf.PADDR = pkt.Status_addr;
    vintf.PWDATA = pkt.Status_data;
    $display("WRITE ACKNOWLEDDGEMENT : PADDR = %0b PWDATA = %0b", pkt.Status_addr, pkt.Status_data);
    
    @(posedge vintf.HCLK);     // stop
    vintf.PADDR = pkt.Command_addr;
    vintf.PWDATA = pkt.Stop_cmd;
    $display("STOP WRITE OPERATION : PADDR = %0b PWDATA = %0b", pkt.Command_addr, pkt.Stop_cmd);
    
  endtask
  
  task Read();
    $display("-----*****READ OPERATION STARTED*****-----");
    @(posedge vintf.HCLK);
    @(posedge vintf.HCLK);
    vintf.PENABLE <= 0;
    vintf.PWRITE <= 0;
    vintf.PADDR <= 0;
    vintf.PWDATA <= 0;
    
    @(posedge vintf.HCLK);
    vintf.PADDR = pkt.Control_addr;
    vintf.PWDATA = pkt.Start_cmd;
    $display("START READ OPERTION : PADDR = %0b PWDATA = %0b",pkt.Control_addr, pkt.Start_cmd);
    
    @(posedge vintf.HCLK);
    vintf.PADDR = pkt.Transmit_addr;
    vintf.PWDATA = 8'b11100010;
    $display("READ ADDRESS : PADDR = %0b PWDATA = %0b",pkt.Transmit_addr, vintf.PWDATA);
    
    @(posedge vintf.HCLK);         // ACK
    vintf.PADDR = pkt.Status_addr;
    vintf.PWDATA = 0;
    $display("ACK BIT : PADDR = %0b", pkt.Status_addr);
    
    do begin
      @(posedge vintf.HCLK);
      pkt.sts_read_data = vintf.PRDATA;
    end
    while(!(pkt.sts_read_data[0] == 1 && pkt.sts_read_data[7] == 0));
      #5;
    $display("DRIVE : INTERRUPT RECEIVED FOR READ");
    get_read();
    
  endtask
  
  task get_read();
    @(posedge vintf.HCLK);
    @(posedge vintf.HCLK);        // write to bus
    vintf.PWRITE <= 1;
    vintf.PADDR = pkt.Command_addr;
    vintf.PWDATA = pkt.Read_cmd;
    $display("DATA READ : PADDR = %0b PWDATA = %0b", pkt.Command_addr, pkt.Read_cmd);
    
    @(posedge vintf.HCLK);
    vintf.PWRITE <= 0;
    vintf.PADDR = pkt.Status_addr;
    $display("READ ACKNOWLEDGEMENT : PADDR = %0b", pkt.Status_addr);
    
    @(posedge vintf.HCLK);
    vintf.PWRITE = 0;
    vintf.PADDR = pkt.Receive_addr;
    $display("READ : PADDR = %0b", pkt.Receive_addr);
    
    @(posedge vintf.HCLK);
    vintf.PENABLE <= 0;
    $display("READ DATA FROM I2C : PRDATA = %0b", pkt.PRDATA);
    
    @(posedge vintf.HCLK);
    vintf.PADDR = pkt.Command_addr;
    vintf.PWDATA = pkt.Stop_cmd;
    $display("STOP READ OPERATION : PADDR = %0b PWADATA = %0b", pkt.Command_addr, pkt.Stop_cmd);
    
  endtask
  
endclass
