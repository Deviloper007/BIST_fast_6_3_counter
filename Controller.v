`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 22:03:33
// Design Name: 
// Module Name: Controller
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


module Controller(
input[5:0] in,
input tm,
input  clk,
input reset,
output tr
    );
    
    wire[5:0] w1, tv;
    wire[2:0] w2, sig;
    LFSR l1(.clk(clk), .reset(reset), .tv(tv));
    assign w1 = tm?tv:in;
    fast_6_3_counter cut(.reset(reset), .x(w1), .o(w2));
    MISR m1(.clk(clk), .reset(reset), .m(w2), .sig(sig));
    Analyser a1(.clk(clk), .reset(reset), .sig(sig), .tr(tr));
    
endmodule
