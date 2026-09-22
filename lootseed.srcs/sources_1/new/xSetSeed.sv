const longint XRSR_SILVER_RATIO = 64'h6a09e667f3bcc909;
const longint XRSR_GOLDEN_RATIO = 64'h9e3779b97f4a7c15;
const longint XRSR_MIX1 =  64'hbf58476d1ce4e5b9;
const longint XRSR_MIX2 = 64'h94d049bb133111eb;


module XSetSeed(
        input clk,
        input [63:0] seed,
        output reg [127:0] xseed
    );
    reg [63:0] lo_xor_seed;
    reg [63:0] hi_xor_seed [0:10];
    reg [63:0] hi_mix_1 [0:12];
    reg [63:0] hi_mix_2 [0:12];
    reg [63:0] lo_mix_1, lo_mix_2, hi_mix_1, hi_mix_2;
    reg [63:0] mix_lo, mix_hi;
    reg [63:0] prop_lo_xor [0:3];
    reg [63:0] prop_mix_hi [0:2];
    initial begin
        lo_xor_seed = 0;
        lo_mix_1 = 0;
        lo_mix_2 = 0;
        hi_mix_1 = 0;
        hi_mix_2 = 0;
        mix_lo = 0;
        mix_hi = 0;
        xseed = 0;
    end

    always @(posedge clk) begin

        
        prop_mix_hi[0] <= mix_hi;
        prop_mix_hi[1] <= prop_mix_hi[0];
        prop_mix_hi[2] <= prop_mix_hi[1];
        
    end
    always@(posedge clk) begin
            prop_lo_xor[0] <= seed ^ XRSR_SILVER_RATIO;
            prop_lo_xor[1] <= prop_lo_xor[0];
            prop_lo_xor[2] <= prop_lo_xor[1];
            prop_lo_xor[3] <= prop_lo_xor[2];
            
            hi_xor_seed[0] <= prop_lo_xor[0] + XRSR_GOLDEN_RATIO;
            hi_xor_seed[1] <= hi_xor_seed[0];
            hi_xor_seed[2] <= hi_xor_seed[1];
            
            hi_mix_1[0] <= (hi_xor_seed[2] ^ hi_xor_seed[2] >> 30) * XRSR_MIX1;
            hi_mix_1[1] <= hi_mix_1[0];
            hi_mix_1[2] <= hi_mix_1[1];
            hi_mix_1[3] <= hi_mix_1[2];
            hi_mix_1[4] <= hi_mix_1[3];         
            hi_mix_1[5] <= hi_mix_1[4];
            hi_mix_1[6] <= hi_mix_1[5];


            hi_mix_2[0] <= ( hi_mix_1[6] ^  hi_mix_1[6] >> 27) * XRSR_MIX2;
            hi_mix_2[1] <= hi_mix_2[0];
            hi_mix_2[2] <= hi_mix_2[1];
            hi_mix_2[3] <= hi_mix_2[2];
            hi_mix_2[4] <= hi_mix_2[3];
            hi_mix_2[5] <= hi_mix_2[4];
            hi_mix_2[6] <= hi_mix_2[5];
            

            mix_hi <= hi_mix_2[6]  ^ hi_mix_2[6]  >> 31;
            
            
            //TODO: implement lo_mix stuff in a pipelined way
            lo_mix_1 <= (prop_lo_xor[2] ^ prop_lo_xor[2] >> 30) * XRSR_MIX1;
            lo_mix_2 <= (lo_mix_1 ^ lo_mix_1 >> 28) * XRSR_MIX2;

            mix_lo <= (lo_mix_2 ^ lo_mix_2 >> 31);
            xseed <= {prop_mix_hi[2], mix_lo};
    end 

endmodule