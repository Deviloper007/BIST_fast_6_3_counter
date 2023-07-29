`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 20:03:49
// Design Name: 
// Module Name: normal_binary_counter
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


module normal_6_3_binary_counter(
input[5:0] x,
output[2:0] o
    );
    
    wire w0, w1, v0, v1, i;
    wire s, c1, c2;
    
    //top layer
    full_adder fa0(x[0], x[1], x[2], w0, w1);
    full_adder fa1(x[3], x[4], x[5], v0, v1);
    //bottom layer
    full_adder fa2(w0, v0, 1'b0, s, i);
    full_adder fa3(v1, v0, i, c1, c2);
    
endmodule
