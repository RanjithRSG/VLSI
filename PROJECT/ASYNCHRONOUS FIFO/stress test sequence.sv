localparam int DEPTH = 16; // or the appropriate depth value

class write_heavy_sequence extends uvm_sequence#(seq_item);

  `uvm_object_utils(write_heavy_sequence)

  function new(string name="write_heavy_sequence");
    super.new(name);
  endfunction

  task body();
    seq_item req;

    // Set up for continuous write-heavy operations until a threshold or FIFO full
    repeat (20) begin  // Adjust repeat count as needed for heavy load testing
      req = seq_item::type_id::create("req");

      // Set constraints for write-heavy behavior
      req.rd_only.constraint_mode(0);  // Disable read-only constraint
      req.wr_only.constraint_mode(1);  // Enable write-only constraint
      req.cn_wen.constraint_mode(1);   // Ensure write enable is active
      req.cn_ren.constraint_mode(0);   // Ensure read enable is inactive

      // Start and randomize the request for each transaction
      start_item(req);
      assert(req.randomize());
      finish_item(req);

      `uvm_info("WRITE_HEAVY_SEQ", "Performed a write operation in write-heavy mode", UVM_MEDIUM);
    end

    `uvm_info("WRITE_HEAVY_SEQ", "Completed all write-heavy transactions", UVM_HIGH);
  endtask
endclass

class read_heavy_sequence extends uvm_sequence#(seq_item);

  `uvm_object_utils(read_heavy_sequence)

  function new(string name="read_heavy_sequence");
    super.new(name);
  endfunction

  task body();
    seq_item req;

    repeat (20) begin  // Adjust repeat count as needed for heavy read
      req = seq_item::type_id::create("req");

      // Set constraints for read-heavy behavior
      req.rd_only.constraint_mode(1);  // Enable read-only constraint
      req.wr_only.constraint_mode(0);  // Disable write-only constraint
      req.cn_wen.constraint_mode(0);   // Disable write enable
      req.cn_ren.constraint_mode(1);   // Enable read enable

      // Start and randomize the request for each transaction
      start_item(req);
      assert(req.randomize());
      finish_item(req);

      `uvm_info("READ_HEAVY_SEQ", "Performed a read operation in read-heavy mode", UVM_MEDIUM);
    end

    `uvm_info("READ_HEAVY_SEQ", "Completed all read-heavy transactions", UVM_HIGH);
  endtask
endclass


class full_to_empty_sequence extends uvm_sequence#(seq_item);

  `uvm_object_utils(full_to_empty_sequence)

  function new(string name="full_to_empty_sequence");
    super.new(name);
  endfunction

  task body();
    seq_item req;

    // Step 1: Write until full
    repeat (8) begin
      req = seq_item::type_id::create("req");

      req.rd_rst.constraint_mode(0);
      req.wr_rst.constraint_mode(1);
      req.cn_wen.constraint_mode(1);   // Enable write
      req.cn_ren.constraint_mode(0);   // Disable read
      req.wr_only.constraint_mode(1);  // Enable write-only constraint
      req.rd_only.constraint_mode(0);  // Disable read-only constraint

      start_item(req);
      assert(req.randomize());
      finish_item(req);

      `uvm_info("FULL_TO_EMPTY_SEQ", "Performed a write operation", UVM_MEDIUM);
    end
    `uvm_info("FULL_TO_EMPTY_SEQ", "FIFO reached full state", UVM_HIGH);

    // Step 2: Read until empty
    repeat (8) begin
      req = seq_item::type_id::create("req");
      
      req.wr_rst.constraint_mode(0);
      req.rd_rst.constraint_mode(1);
      req.cn_wen.constraint_mode(0);   // Disable write
      req.cn_ren.constraint_mode(1);   // Enable read
      req.wr_only.constraint_mode(0);  // Disable write-only constraint
      req.rd_only.constraint_mode(1);  // Enable read-only constraint
      
      start_item(req);
      assert(req.randomize());
      finish_item(req);

      `uvm_info("FULL_TO_EMPTY_SEQ", "Performed a read operation", UVM_MEDIUM);
    end
    `uvm_info("FULL_TO_EMPTY_SEQ", "FIFO reached empty state", UVM_HIGH);
  endtask
endclass


class empty_to_full_sequence extends uvm_sequence#(seq_item);

  `uvm_object_utils(empty_to_full_sequence)

  function new(string name="empty_to_full_sequence");
    super.new(name);
  endfunction

  task body();
    seq_item req;

    // Step 1: Read until empty
    repeat (10) begin
      req = seq_item::type_id::create("req");

      req.rd_only.constraint_mode(1);  // Enable read-only constraint
      req.wr_only.constraint_mode(0);  // Disable write-only constraint
      req.cn_wen.constraint_mode(0);   // Disable write enable
      req.cn_ren.constraint_mode(1);   // Enable read enable

      start_item(req);
      assert(req.randomize());
      finish_item(req);

      `uvm_info("EMPTY_TO_FULL_SEQ", "Performed a read operation", UVM_MEDIUM);
    end
    `uvm_info("EMPTY_TO_FULL_SEQ", "FIFO reached empty state", UVM_HIGH);

    // Step 2: Write until full
    repeat (10) begin
      req = seq_item::type_id::create("req");

      req.wr_only.constraint_mode(1);  // Enable write-only constraint
      req.rd_only.constraint_mode(0);  // Disable read-only constraint
      req.cn_wen.constraint_mode(1);   // Enable write enable
      req.cn_ren.constraint_mode(0);   // Disable read enable

      start_item(req);
      assert(req.randomize());
      finish_item(req);

      `uvm_info("EMPTY_TO_FULL_SEQ", "Performed a write operation", UVM_MEDIUM);
    end
    `uvm_info("EMPTY_TO_FULL_SEQ", "FIFO reached full state", UVM_HIGH);
  endtask
endclass


class write_enable_glitch_sequence extends uvm_sequence#(seq_item);

  `uvm_object_utils(write_enable_glitch_sequence)

  function new(string name="write_enable_glitch_sequence");
    super.new(name);
  endfunction

  task body();
    seq_item req;

    // Repeat for multiple write attempts with glitches
    repeat(10) begin
      req = seq_item::type_id::create("req");

      // Configure constraints for glitch introduction
      req.wr_only.constraint_mode(1);  // Enable write-only mode
      req.rd_only.constraint_mode(0);  // Disable read-only mode
      req.cn_wen.constraint_mode(1);   // Enable write enable
      
      start_item(req);
      
      // Introduce a glitch by toggling `wr_en` during the write operation
      req.wr_en = 1;
      assert(req.randomize());
      finish_item(req);

      // Glitch: Briefly disable and re-enable wr_en in the middle of the operation
      req.wr_en = 0;
      `uvm_info("WRITE_ENABLE_GLITCH_SEQ", "Introduced glitch in write enable (wr_en)", UVM_MEDIUM);
      req.wr_en = 1;
      finish_item(req);

      `uvm_info("WRITE_ENABLE_GLITCH_SEQ", "Attempted write operation with wr_en glitch", UVM_MEDIUM);
    end
    `uvm_info("WRITE_ENABLE_GLITCH_SEQ", "Completed all write operations with wr_en glitch tests", UVM_HIGH);
  endtask
endclass


class read_enable_glitch_sequence extends uvm_sequence#(seq_item);

  `uvm_object_utils(read_enable_glitch_sequence)

  function new(string name="read_enable_glitch_sequence");
    super.new(name);
  endfunction

  task body();
    seq_item req;

    // Repeat for multiple read attempts with glitches
    repeat(10) begin
      req = seq_item::type_id::create("req");

      // Configure constraints for glitch introduction
      req.rd_only.constraint_mode(1);  // Enable read-only mode
      req.wr_only.constraint_mode(0);  // Disable write-only mode
      req.cn_ren.constraint_mode(1);   // Enable read enable
      
      start_item(req);
      
      // Introduce a glitch by toggling `rd_en` during the read operation
      req.rd_en = 1;
      assert(req.randomize());
      finish_item(req);

      // Glitch: Briefly disable and re-enable rd_en in the middle of the operation
      req.rd_en = 0;
      `uvm_info("READ_ENABLE_GLITCH_SEQ", "Introduced glitch in read enable (rd_en)", UVM_MEDIUM);
      req.rd_en = 1;

      finish_item(req);

      `uvm_info("READ_ENABLE_GLITCH_SEQ", "Attempted read operation with rd_en glitch", UVM_MEDIUM);
    end
    `uvm_info("READ_ENABLE_GLITCH_SEQ", "Completed all read operations with rd_en glitch tests", UVM_HIGH);
  endtask
endclass
