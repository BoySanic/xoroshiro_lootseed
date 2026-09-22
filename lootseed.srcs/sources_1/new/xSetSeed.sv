const longint XRSR_SILVER_RATIO = 64'h6a09e667f3bcc909;
const longint XRSR_GOLDEN_RATIO = 64'h9e3779b97f4a7c15;
const longint XRSR_MIX1 =  64'hbf58476d1ce4e5b9;
const longint XRSR_MIX2 = 64'h94d049bb133111eb;


module XSetSeed(
        input clk,
        input [63:0] seed,
        output reg [127:0] xseed
    );
    reg [63:0] silvered_seed;
    reg [63:0] hi_xor_seed;
    reg [63:0] hi_xor_seed_rolled;
    reg [63:0] lo_xor_seed [0:10];
    reg [63:0] lo_xor_seed_rolled;
    reg [63:0] hi_mix_1;
    reg [63:0] hi_mix_1_rolled;
    reg [63:0] hi_mix_2;
    reg [63:0] lo_mix_1;
    reg [63:0] lo_mix_1_rolled;
    reg [63:0] lo_mix_2;
    wire [63:0] mix_lo, mix_hi;
    
    assign mix_hi = hi_mix_2 ^ hi_mix_2 >> 31;
    assign mix_lo = lo_mix_2 ^ lo_mix_2 >> 31;
    
    goldenratio_add gra (
        .A (seed ^ XRSR_SILVER_RATIO),
        .CE (1),
        .CLK (clk),
        .S (hi_xor_seed)
    );
    
    mix1_mult_lut mix1_hi (
        .A (hi_xor_seed_rolled),
        .CLK (clk),
        .P (hi_mix_1)
    );
    
    mix1_mult_lut mix1_lo (
        .A (lo_xor_seed_rolled),
        .CLK (clk),
        .P (lo_mix_1)
    );
    
    mix2_mult_lut mix2_hi (
        .A (hi_mix_1_rolled),
        .CLK (clk),
        .P (hi_mix_2)
    );
    
    mix2_mult_lut mix2_lo (
        .A (lo_mix_1_rolled),
        .CLK (clk),
        .P (lo_mix_2)
    );
    
    always@(posedge clk) begin
    

            // Delay to match hi_xor_seed's add latency
            lo_xor_seed[0] <= seed ^ XRSR_SILVER_RATIO;;
            lo_xor_seed[1] <= lo_xor_seed[0];
            lo_xor_seed[2] <= lo_xor_seed[1];
            lo_xor_seed[3] <= lo_xor_seed[2];
            lo_xor_seed[4] <= lo_xor_seed[3];  
            lo_xor_seed[5] <= lo_xor_seed[4];  
        
            hi_xor_seed_rolled <= hi_xor_seed ^ hi_xor_seed >> 30;
            lo_xor_seed_rolled <= lo_xor_seed[5] ^ lo_xor_seed[5] >> 30;
            
            hi_mix_1_rolled <= hi_mix_1 ^  hi_mix_1 >> 27;
            lo_mix_1_rolled <= lo_mix_1 ^ lo_mix_1 >> 27;
            
            xseed <= {mix_hi, mix_lo};
    end 

endmodule