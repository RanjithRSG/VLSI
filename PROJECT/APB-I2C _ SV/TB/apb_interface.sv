interface apb_interface;
  logic HCLK;
  logic HRESETn;
  logic [31:0] PADDR;
  logic PSEL;
  logic PENABLE;
  logic PWRITE;
  logic [31:0] PWDATA;
  logic [31:0] PRDATA;
  logic PREADY;
  logic PSLVERR;
  logic interrupt_o;  
endinterface  
