class test extends uvm_test;
  `uvm_component_utils(test);
  
     environment envi;
//   reset_sequens sequ_rst;
//   write_sequens sequ_wr;
//   read_sequens sequ_rd;
//   read_write_sequens sequ_rd_wr;sequ_high_speed
  high_speed_write_read_sequence sequ_high_speed;

  function new(string name="test", uvm_component parent);
    super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // Create environment and sequence objects
     envi = environment::type_id::create("envi", this);
//     sequ_rst = reset_sequens::type_id::create("sequ_rst");
//     sequ_wr = write_sequens::type_id::create("sequ_wr");
//     sequ_rd = read_sequens::type_id::create("sequ_rd");
//     sequ_rd_wr = read_write_sequens::type_id::create("sequ_rd_wr");
    sequ_high_speed = high_speed_write_read_sequence::type_id::create("sequ_high_speed");

    `uvm_info("TEST", "build_phase: Components and sequences created successfully", UVM_MEDIUM);
  endfunction
  
  virtual task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    // Start the test and raise an objection to keep it running
    phase.raise_objection(this);
    `uvm_info("TEST", "run_phase: Starting test sequences", UVM_MEDIUM);

//     // Start the reset sequence
//     
    `uvm_info("TEST", "Starting reset sequence", UVM_MEDIUM);
//     sequ_rst.start(envi.agt.sqr);
//     #20;

//     // Start write-only sequence
//     `uvm_info("TEST", "Starting write-only sequence", UVM_MEDIUM);
//     sequ_wr.start(envi.agt.sqr);
//     #100;

//     // Start read-only sequence
//     `uvm_info("TEST", "Starting read-only sequence", UVM_MEDIUM);
//     sequ_rd.start(envi.agt.sqr);
//     #100;

//     // Start simultaneous read/write sequence
//     `uvm_info("TEST", "Starting simultaneous read/write sequence", UVM_MEDIUM);
//     sequ_rd_wr.start(envi.agt.sqr);
//     #100;

    // Start high-speed write/read sequence
    `uvm_info("TEST", "Starting high-speed write/read sequence", UVM_MEDIUM);
    sequ_high_speed.start(envi.agt.sqr);
    #100;

    // Drop the objection to end the test after all sequences complete
    phase.drop_objection(this);
    `uvm_info("TEST", "run_phase: End of test case", UVM_LOW);
  endtask

endclass
