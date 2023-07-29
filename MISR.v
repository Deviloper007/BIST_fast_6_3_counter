`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 22:02:56
// Design Name: 
// Module Name: MISR
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


module MISR(
input[2:0] m,
input clk,
input reset,
output [2:0] sig
    );
    
    
    
    dff d2(.d(m[2]^sig[1])       , .q(sig[2]),  .clk(clk), .reset(reset));
    dff d1(.d(m[1]^sig[0]^sig[2]), .q(sig[1]),  .clk(clk), .reset(reset));
    dff d0(.d(m[0]^sig[2])       , .q(sig[0]),  .clk(clk), .reset(reset));

    
    
endmodule
