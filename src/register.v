module DFlipFlop(input D, clk, reset, output reg Q, output Q_not);
    always @(posedge clk or posedge reset) begin
        if(reset)
            Q <= 0;
        else
            Q <= D;
    end

    assign Q_not = ~Q;
endmodule

module register_2bit(input S1, S0, clk, reset, output Q1, Q1_not, Q0, Q0_not);
    DFlipFlop D0(S0, clk, reset, Q0, Q0_not);
    DFlipFlop D1(S1, clk, reset, Q1, Q1_not);
endmodule