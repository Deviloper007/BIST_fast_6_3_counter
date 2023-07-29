`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 16:26:37
// Design Name: 
// Module Name: counter
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


module fast_6_3_counter(
input[5:0] x,
input reset,
output[2:0] o
    );
    
    wire s, c1, c2;
    
    wire[2:0] h, i;
    
    three_bit_stacker m0(x[0], x[1], x[2], h[0], h[1], h[2]);
    three_bit_stacker m1(x[3], x[4], x[5], i[0], i[1], i[2]);
    
    

   
   wire[2:0] k;
   //wire[2:0] j;
  // assign j0 = h[2] | i[0];
  // assign j1 = h[1] | i[1];
  // assign j2 = h[0] | i[2];
   
   assign k[0] = h[2] & i[0];
   assign k[1] = h[1] & i[1];
   assign k[2] = h[0] & i[2];
    
    wire he, ie;
    
    assign he = (~h[0]) | (h[1] & ~h[2]);
    assign ie = (~i[0]) | (i[1] & ~i[2]);
    
    assign s = he ^ ie;
    assign c1 = ((h[1] | i[1] | (h[0] & i[0]) )&(~k[0] & ~k[1] & ~k[2])) | (h[2] & i[2]); 
    assign c2 = k[0] | k[1] | k[2];  
    
    assign o = reset?6'b000000:({c2, c1, s});  
    
endmodule
