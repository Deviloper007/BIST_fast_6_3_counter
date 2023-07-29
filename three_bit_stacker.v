`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 16:43:56
// Design Name: 
// Module Name: three_bit_stacker
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


module three_bit_stacker(
input i0,
input i1,
input i2,
output o0,
output o1,
output o2
    );
    
    assign o0 = i0 | i1 | i2;
    assign o1 = (i0&i1) | (i1&i2) | (i2&i0);
    assign o2 = i0 & i1 & i2;
    
endmodule
