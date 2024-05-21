`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 16:16:43
// Design Name: 
// Module Name: k1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 1 bit multiplier (simple & gate)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module k1(
    input in1,
    input in2,
    output out
    );
    assign out = in1 & in2;
endmodule
