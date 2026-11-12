module traffic_light(input clk, reset, output R, Y, G);
    wire S1, S0;
    wire Q1, Q1_not, Q0, Q0_not;

    and and0(R, Q1_not, Q0_not);
    and and1(Y, Q1, Q0_not);
    and and2(G, Q1_not, Q0);

    assign S1 = Q0;
    assign S0 = R;

    register_2bit register(S1, S0, clk, reset, Q1, Q1_not, Q0, Q0_not);
endmodule