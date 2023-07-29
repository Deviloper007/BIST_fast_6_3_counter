`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2023 22:02:42
// Design Name: 
// Module Name: LFSR
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


module LFSR(
output [5:0] tv,
input clk,
input reset
    );
    
    wire res;
    
    assign res = (~tv[5])&(~tv[4])&(tv[3])&(~tv[2])&(~tv[1])&(~tv[0]);
    
    dff d5(.d(tv[4])        , .q(tv[5]), .clk(clk), .reset(reset|res));
    dff d4(.d(tv[3])        , .q(tv[4]), .clk(clk), .reset(reset|res));
    dff d3(.d(tv[2])        , .q(tv[3]), .clk(clk), .reset(reset|res));
    dff d2(.d(tv[1])        , .q(tv[2]), .clk(clk), .reset(reset|res));
    dff d1(.d((tv[5]^tv[0])), .q(tv[1]), .clk(clk), .reset(reset|res));
    dff d0(.d(tv[5])        , .q(tv[0]), .clk(clk), .reset(reset|res));
    
    
endmodule
