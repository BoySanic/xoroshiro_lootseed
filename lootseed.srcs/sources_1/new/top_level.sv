`timescale 1ns / 1ps

module top_level #(parameter N = 80)
    (
        input  clk50,          // default_50mhz_clk0
        output [2:0] led
    );
    reg acc;
    wire clk300;
    clk_wiz_0 cw (
        .clk_in1(clk50),
        .clk_out1(clk300)
    
    );
    wire [64*N-1:0] all_core_outputs;
    reg  [N-1:0]    core_parity;

    genvar k;
    generate
        for (k = 0; k < N; k = k + 1) begin : cores
            core c (
                .clk      (clk300),
                .seed_in  (counter ^ (64'h9E3779B97F4A7C15 * (k + 1))),  // different per core
                .seed_out (all_core_outputs[64*k +: 64])
            );

            // Reduce each core's output to 1 bit, registered
            always @(posedge clk300)
                core_parity[k] <= ^all_core_outputs[64*k +: 64];
        end
    endgenerate

    reg acc = 0;
    always @(posedge clk300) acc <= ^core_parity;

    reg [63:0] counter = 0;
    always @(posedge clk300) counter <= counter + 1;

    assign led = {2'b00, acc};
endmodule
