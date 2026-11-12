module tb;
    reg clk, reset;
    wire R, Y, G;

    traffic_light tl(clk, reset, R, Y, G);

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, tb);

        $display(" T  | clk reset | R Y G");
        $monitor("%3t |  %b    %b   | %b %b %b", $time, clk, reset, R, Y, G);

        reset = 1;
        #12;
        reset = 0;

        #100;
        $finish;
    end
endmodule