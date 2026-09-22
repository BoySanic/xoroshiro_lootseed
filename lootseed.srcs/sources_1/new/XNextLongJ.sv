`timescale 1ns / 1ps


module XNextLongJ(
        input clk,
        input [127:0] xrstate_in,
        output reg [63:0] n
    );
     
    reg [127:0] xrstate_a_to_b;
    reg signed [31:0] a_states [0:11];
    reg signed [31:0] b_state;
    reg [63:0] a_plus_b [0:2];
    wire [63:0] a_out, b_out;
    XNextLong nl_a (
        .clk (clk),
        .xrstate_in (xrstate_in),
        .xrstate_out (xrstate_a_to_b),
        .long (a_out)
    );
    
    XNextLong nl_b (
    
        .clk (clk),
        .xrstate_in (xrstate_a_to_b),
        .long (b_out)
    );
    always @(posedge clk) begin
        a_states[0] <= a_out >> 32;
        a_states[1] <= a_states[0];
        a_states[2] <= a_states[0];
        a_states[3] <= a_states[0];
        a_states[4] <= a_states[0];
        a_states[5] <= a_states[0];
        a_states[6] <= a_states[0];
        a_states[7] <= a_states[0];
        a_states[8] <= a_states[0];
        a_states[9] <= a_states[0];
        a_states[10] <= a_states[0];
        a_states[11] <= a_states[10];
        
        b_state <= b_out;
        a_plus_b[0] <= (a_states[11] << 32) + b_out;
        a_plus_b[1] <= a_plus_b[0];
        a_plus_b[2] <= a_plus_b[1]; 
        n <= a_plus_b[2];
        
    end
endmodule
