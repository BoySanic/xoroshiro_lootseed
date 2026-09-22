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
    
    
    reg [127:0] xrsr_input;
    reg [127:0] xrsr_output;
    wire [63:0] n;
    reg clk;
    
    XNextLong x (
        .clk (clk),
        .xrstate_in(xrsr_input),
        .long (n),
        .xrstate_out (xrsr_output)
    );
    
    
    task test;
        xrsr_input = { 64'd7640891576956012809, -64'd7046029254386353131};
        #110;
        if(n == 64'd6807859099481836695) begin
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
