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
    
    initial begin

    end

    always @(posedge clk) begin
        l_prop[0] <= xrstate_in[63:0];
        l_prop[1] <= l_prop[0];
        l_prop[2] <= l_prop[1];
        l_prop[3] <= l_prop[2];
        l_prop[4] <= l_prop[3];
        
        l_plus_h[0] <= xrstate_in[63:0] + xrstate_in[127:64];
        l_plus_h[1] <= l_plus_h[0];
        l_plus_h[2] <= l_plus_h[1];
        l_plus_h[3] <= l_plus_h[2] << 17;
        l_plus_h[4] <= l_plus_h[2] >> 47;
        l_plus_h[5] <= l_plus_h[3] | l_plus_h[4];
        l_plus_h[6] <= l_plus_h[5] + l_prop[4];
        l_plus_h[7] <= l_plus_h[6];
        l_plus_h[8] <= l_plus_h[7];
        l_plus_h[9] <= l_plus_h[8];
        l_plus_h[10] <= l_plus_h[9];
        
        h_states[0] <= xrstate_in[127:64] ^ xrstate_in[63:0];
        h_states[1] <= h_states[0];
        h_states[2] <= h_states[1] << 28;
        h_states[3] <= h_states[1] >> 36;
        h_states[4] <= h_states[2] | h_states[3];
        h_states[5] <= h_states[4];
        h_states[6] <= h_states[5];
        h_states[7] <= h_states[6];
        h_states[8] <= h_states[7];
        h_states[9] <= h_states[8];
        h_states[10] <= h_states[9];
        
        l_states[0] <= xrstate_in[63:0] << 49;
        l_states[1] <= xrstate_in[63:0] >> 15;
        l_states[2] <= l_states[0] | l_states[1];
        l_states[3] <= l_states[2] ^ h_states[1] ^ (h_states[1] << 21);
        l_states[4] <= l_states[3];
        l_states[5] <= l_states[4];
        l_states[6]  <= l_states[5];
        l_states[7]  <= l_states[6];
        l_states[8]  <= l_states[7];
        l_states[9]  <= l_states[8];
        l_states[10]  <= l_states[9];
        
        xrstate_out[63:0] <= l_states[10];
        xrstate_out[127:64] <= h_states[10];
        long <= l_plus_h[10];
    end
endmodule