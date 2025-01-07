module environment (alu_if en_if
    //virtual alu_if alu_if_inst
);
    alu_transaction txn = new();
    alu_transaction mon_txn = new();
    driver drv(en_if);
    monitor mon(en_if);
  	scoreboard sb();

//     initial begin
//         drv = new(alu_if_inst);
//         mon = new(alu_if_inst);
//         sb = new();
//     end

    task run(input alu_transaction txn);
        drv.drive(txn);
      
//         alu_transaction mon_txn;
        mon.monitor_output(mon_txn);
        sb.compare(mon_txn);
      
    endtask
  
endmodule
