// Code your design here
module fsm_example(
    input  logic clk,       
    input  logic rst_n,    
    input  logic start,     
    output logic done       
);

    typedef enum logic [1:0] {
        IDLE    = 2'b00,    // Idle state
        READ    = 2'b01,    // Reading data
        PROCESS = 2'b10,    // Processing data
        WRITE   = 2'b11     // Writing data
    } state_t;

    state_t current_state, next_state;

    // Output signal logic
    assign done = (current_state == WRITE);
  
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= IDLE; // Reset to IDLE state
        else
            current_state <= next_state; // Update to next state
    end
  
    always_comb begin
        next_state = current_state;

        case (current_state)
            IDLE: begin
                if (start)
                    next_state = READ; // Transition to READ if start is asserted
            end

            READ: begin
                next_state = PROCESS; // Transition to PROCESS after reading
            end

            PROCESS: begin
                next_state = WRITE; // Transition to WRITE after processing
            end

            WRITE: begin
                next_state = IDLE; // Go back to IDLE after writing
            end

            default: begin
                next_state = IDLE; // Safety fallback to IDLE
            end
        endcase
    end

endmodule
