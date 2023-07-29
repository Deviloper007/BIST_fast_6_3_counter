`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 11:55:10
// Design Name: 
// Module Name: Comparator
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


module Analyser(
input[2:0] sig,
//input [2:0] o,
input clk,
input reset,
//input  tm,
output tr
//output out
    );
    
    reg[5:0] count = 6'b000000;
    reg[2:0] signature = 3'b010;
//    reg tr;
    
    always@(posedge clk)
    begin
    if(reset) count = 6'b000000;
    else count = count + 6'b000001 ;
    end
    
    assign tr = ((count == 6'b000111) && (sig == signature))?1'b1:1'b0;    
    
    
endmodule