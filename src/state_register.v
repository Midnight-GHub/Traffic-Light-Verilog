module state_register(
    input clk,
    input reset,
    input [1:0] next_state,
    output reg [1:0] state
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        state <= 2'b00;
    else
        state <= next_state;
end

endmodule