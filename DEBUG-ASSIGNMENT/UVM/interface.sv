interface alu_if(input logic clk);
  logic [3:0] a, b;
    logic [1:0] op;
  logic [3:0] result;

//     modport drv (output a, b, op, input result);
//     modport mon (input a, b, op, result);
endinterface
