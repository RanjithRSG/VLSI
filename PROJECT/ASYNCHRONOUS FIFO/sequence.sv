class reset_sequens extends uvm_sequence#(seq_item);
    
  
  `uvm_object_utils(reset_sequens);
  

 function new(string name="sequens");
    super.new(name);
  endfunction
  
   task body();
    seq_item req;
   
//     forever begin
   req=seq_item::type_id::create("req"); 
       
     
     start_item(req);
     req.wrst_n=0;
     req.rrst_n=0;
     req.winc=0;
     req.rinc=0;
     finish_item(req);

     `uvm_info("reset_sequence","inside sequence",UVM_NONE);
//     end
   
  endtask
endclass

class write_sequens extends uvm_sequence#(seq_item);
    
  
  `uvm_object_utils(write_sequens);
  

  function new(string name="write_sequens");
    super.new(name);
  endfunction
  
   task body();
    seq_item req;
   
     repeat(5)  begin
   req=seq_item::type_id::create("req"); 
       
       req.rd_rst.constraint_mode(0);
       req.wr_rst.constraint_mode(1);
       req.cn_wen.constraint_mode(1);
       req.cn_ren.constraint_mode(0);
       req.wr_only.constraint_mode(1);
       req.rd_only.constraint_mode(0);
       
       
     start_item(req);
       assert(req.randomize());
     finish_item(req);

       `uvm_info("write_sequence","inside sequence",UVM_NONE);
     end
   
  endtask
endclass


class read_sequens extends uvm_sequence#(seq_item);
    
  
  `uvm_object_utils(read_sequens);
  

  function new(string name="write_sequens");
    super.new(name);
  endfunction
  
   task body();
    seq_item req;
   
     repeat(5)  begin
   req=seq_item::type_id::create("req"); 
       
       req.rd_rst.constraint_mode(1);
       req.wr_rst.constraint_mode(0);
       req.cn_wen.constraint_mode(0);
     req.cn_ren.constraint_mode(1);
       req.wr_only.constraint_mode(0);
       req.rd_only.constraint_mode(1);
       
       
     start_item(req);
       assert(req.randomize());
     finish_item(req);

       `uvm_info("read_sequence","inside sequence",UVM_NONE);
     end
   
  endtask
endclass


class read_write_sequens extends uvm_sequence#(seq_item);
    
  
  `uvm_object_utils(read_write_sequens)
  

  function new(string name="read_write_sequens");
    super.new(name);
  endfunction
  
   task body();
    seq_item req;
   
     repeat(5)  begin
   req=seq_item::type_id::create("req"); 
       
       req.rd_rst.constraint_mode(1);
       req.wr_rst.constraint_mode(1);
       req.cn_wen.constraint_mode(1);
       req.cn_ren.constraint_mode(1);
       req.wr_only.constraint_mode(0);
       req.rd_only.constraint_mode(0);
       
       
     start_item(req);
       assert(req.randomize());
     finish_item(req);

       `uvm_info("read_write_sequence","inside sequence",UVM_NONE);
     end
   
  endtask
endclass
class high_speed_write_read_sequence extends uvm_sequence#(seq_item);

  `uvm_object_utils(high_speed_write_read_sequence)

  function new(string name="high_speed_write_read_sequence");
    super.new(name);
  endfunction

  task body();
    seq_item req;

    repeat(10) begin  // Adjust repeat count as needed for stress-testing
      req = seq_item::type_id::create("req");

      req.rd_rst.constraint_mode(1);
      req.wr_rst.constraint_mode(1);
      req.cn_wen.constraint_mode(1);  // Enable write
      req.cn_ren.constraint_mode(1);  // Enable read
      req.wr_only.constraint_mode(0); // Both read and write
      req.rd_only.constraint_mode(0); // Both read and write
      
      // Start the item with both high-speed write and read
      start_item(req);
      
      // Randomize to simulate data and other properties if needed
      assert(req.randomize());

      finish_item(req);

      `uvm_info("high_speed_write_read_sequence", "Executing high-speed write/read operation", UVM_NONE);
    end
  endtask
endclass