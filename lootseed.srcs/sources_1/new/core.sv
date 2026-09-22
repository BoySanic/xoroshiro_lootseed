`timescale 1ns / 1ps


module core(
        input [63:0] seed_in,
        input clk,
       (* mark_debug = "true" *) output [63:0] seed_out
    );
    wire [127:0] xseed;
    XSetSeed xs (
        .clk (clk),
        .seed (seed_in),
        .xseed (xseed)
    );
    
    XNextLongJ x_nl (
        .clk (clk),
        .xrstate_in (xseed),
        .n (seed_out)
    );
endmodule
