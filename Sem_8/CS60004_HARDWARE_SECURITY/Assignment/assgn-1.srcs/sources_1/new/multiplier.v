`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 14:06:32
// Design Name: 
// Module Name: multiplier
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


module multiplier(
    input [162:0] in1,
    input [162:0] in2,
    output [162:0] out
    );
    
    // wire to store the intermediate multiplication
    wire [324:0] mult_result;
    
    k163 mult(
        .in1(in1),
        .in2(in2),
        .out(mult_result)
        );
        
    reducer red(
        .in(mult_result),
        .out(out)
        );

endmodule
