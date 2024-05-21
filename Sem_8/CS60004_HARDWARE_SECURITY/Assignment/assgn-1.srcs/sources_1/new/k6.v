`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 14:27:21
// Design Name: 
// Module Name: k6
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 6 bit karatsuba multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module k6(
    input [5:0] in1,
    input [5:0] in2,
    output [10:0] out
    );
    
    // declare wires to store the low and high bits of the inputs
    wire [2:0] in1_low, in2_low;
    wire [2:0] in1_high, in2_high;
    
    // declare wires to store the intermediate multiplicands for karatsuba
    wire [2:0] temp1, temp2;

    // assign the high and low bits of the inputs
    assign in1_low = in1[2:0];
    assign in2_low = in2[2:0];
    assign in1_high = in1[5:3];
    assign in2_high = in2[5:3];

    // assign the intermediate multiplicands
    assign temp1 = in1_low ^ in1_high;
    assign temp2 = in2_low ^ in2_high;

    // declare wires to store multiplication results
    wire [4:0] result_low, result_mid;
    wire [4:0] result_high;

    // instantiate the 3 bit karatsuba multiplier
    k3 mult_low(
        .in1(in1_low),
        .in2(in2_low),
        .out(result_low)
        );

    // instantiate the 3 bit karatsuba multiplier
    k3 mult_mid(
        .in1(temp1),
        .in2(temp2),
        .out(result_mid)
        );
    
    // instantiate the 3 bit karatsuba multiplier
    k3 mult_high(
        .in1(in1_high),
        .in2(in2_high),
        .out(result_high)
        );
    
    // combine the results into the output
    
    assign out[0] = result_low[0];
    assign out[1] = result_low[1];
    assign out[2] = result_low[2];
    assign out[3] = result_low[3] ^ result_low[0] ^ result_mid[0] ^ result_high[0];
    assign out[4] = result_low[4] ^ result_low[1] ^ result_mid[1] ^ result_high[1];
    assign out[5] = result_low[2] ^ result_mid[2] ^ result_high[2];
    assign out[6] = result_low[3] ^ result_mid[3] ^ result_high[3] ^ result_high[0];
    assign out[7] = result_low[4] ^ result_mid[4] ^ result_high[4] ^ result_high[1];
    assign out[8] = result_high[2];
    assign out[9] = result_high[3];
    assign out[10] = result_high[4];

endmodule
