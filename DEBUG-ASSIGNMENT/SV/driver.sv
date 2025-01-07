module driver (alu_if drv_if
//     input logic clk,
//     input logic reset,
//     virtual alu_if.drv drv_if
);
    task drive(input alu_transaction txn);
        drv_if.a = txn.a;
        drv_if.b = txn.b;
        drv_if.op = txn.op;
        #10;
    endtask
  
endmodule
