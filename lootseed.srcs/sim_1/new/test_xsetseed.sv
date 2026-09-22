`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2026 11:56:58 AM
// Design Name: 
// Module Name: test_xsetseed
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_xsetseed(

    );
    
    reg [63:0] input_seed;
    reg clk;
    wire [127:0] output_state;
    
    XSetSeed xset (
        .clk (clk),
        .seed (input_seed),
        .xseed (output_state)
    );
    
    
    task test1 ();
        input_seed = 1234;
        #5
        input_seed = 69;
        #5
        input_seed = 420;
    endtask
    initial begin
        clk = 0;
        test1();
    end
    always begin
        #5 clk = ~clk;
    end
endmodule
