module XNextLong(
    input clk,
    input [127:0] xrstate_in,
    output reg [63:0] long,
    output reg [127:0] xrstate_out
    );
    
    reg [63:0] l_states [0:10];
    reg [63:0] l_prop   [0:4];
    reg [63:0] h_states [0:10];
    reg [63:0] n_states [0:10];
    reg [63:0] l_plus_h [0:10];
    
    wire [63:0] l_plus_h_shifted_and_ored;
    wire [63:0] h_post_xor = xrstate_in[127:64] ^ xrstate_in[63:0];
    wire [63:0] h_rolled = h_post_xor << 28 | h_post_xor >> 36;
    wire [63:0] l_rolled = xrstate_in[63:0] << 49 | xrstate_in[63:0] >> 15;
    assign l_plus_h_shifted_and_ored = l_plus_h[0] << 17 | l_plus_h[0] >> 47;
    
    // 6 stages
    add_u64 lh_adder (
        .A (xrstate_in[63:0]),
        .B (xrstate_in[127:64]),
        .CE (1),
        .CLK (clk),
        .S (l_plus_h[0])
    );
    
    // 6 stages
    add_u64 lhl_adder (
        .A (l_prop[5]),
        .B (l_plus_h_shifted_and_ored),
        .S (long),
        .CLK (clk),
        .CE (1)
    );
    
    always @(posedge clk) begin
        l_prop[0] <= xrstate_in[63:0];
        l_prop[1] <= l_prop[0];
        l_prop[2] <= l_prop[1];
        l_prop[3] <= l_prop[2];
        l_prop[4] <= l_prop[3];
        l_prop[5] <= l_prop[4];
        
        
        h_states[0] <= h_rolled;
        h_states[1] <= h_states[0];
        h_states[2] <= h_states[1];
        h_states[3] <= h_states[2];
        h_states[4] <= h_states[3];
        h_states[5] <= h_states[4];
        h_states[6] <= h_states[5];
        h_states[7] <= h_states[6];
        h_states[8] <= h_states[7];
        h_states[9] <= h_states[8];
        h_states[10] <= h_states[9];
        xrstate_out[127:64] <= h_states[10];
        
        // delay idk how long
        
        l_states[0] <= l_rolled ^ h_post_xor ^ (h_post_xor << 21);
        l_states[1] <= l_states[0];
        l_states[2] <= l_states[1];
        l_states[3] <= l_states[2];
        l_states[4] <= l_states[3];
        l_states[5] <= l_states[4];
        l_states[6] <= l_states[5];
        l_states[7] <= l_states[6];
        l_states[8] <= l_states[7];
        l_states[9] <= l_states[8];
        l_states[10] <= l_states[9];
        xrstate_out[63:0] <= l_states[10];

    end
endmodule