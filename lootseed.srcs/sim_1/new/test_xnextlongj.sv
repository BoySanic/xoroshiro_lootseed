`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2026 02:32:59 PM
// Design Name: 
// Module Name: test_xnextlong
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


module test_xnextlong(

    );
    
    
    reg [63:0] seed_input;
    reg [127:0] xrsr_output;
    wire [127:0] xrsr_in_j;
    wire signed [63:0] n;
    reg clk;
    
    XNextLongJ x (
        .clk (clk),
        .xrstate_in(xrsr_in_j),
        .n (n)
    );
    
    XSetSeed xs (
        .clk (clk),
        .seed (seed_input),
        .xseed (xrsr_in_j)
    );
    task test;
        seed_input = 64'd6807859099481836695;
        #310;
        if(n == -64'd7181985265694671957) begin
             $display("Success");
        end else begin
             $display("Big fail");
        end
    endtask
    
    initial begin
        clk = 0;
        test();
    end
    
    always begin
        #5 clk = ~clk;
    end
endmodule
