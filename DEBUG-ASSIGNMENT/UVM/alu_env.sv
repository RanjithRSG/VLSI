class alu_env extends uvm_env;
  `uvm_component_utils(alu_env)
  
     alu_driver drv;
     alu_monitor mon;

  function new(string name, uvm_component parent);
        super.new(name, parent);
      `uvm_info("ENV","const",UVM_MEDIUM)
    endfunction

    function void build_phase(uvm_phase phase);
      `uvm_info("ENV","build",UVM_MEDIUM)
        super.build_phase(phase);
      drv = alu_driver::type_id::create("drv", this);
      mon = alu_monitor::type_id::create("mon", this);

        // Set interfaces
        //uvm_config_db#(virtual alu_if)::set(this, "drv", "drv_if", mon_if);
       // uvm_config_db#(virtual alu_if)::set(this, "mon", "mon_if", mon_if);

    endfunction
endclass
