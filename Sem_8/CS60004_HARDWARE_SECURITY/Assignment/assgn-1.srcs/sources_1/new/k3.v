`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 14:27:21
// Design Name: 
// Module Name: k3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 3 bit karatsuba multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module k3(
    input [2:0] in1,
    input [2:0] in2,
    output [4:0] out
    );
    
    // declare wires to store the low and high bits of the inputs
    wire [1:0] in1_low, in2_low;
    wire in1_high, in2_high;
    
    // declare wires to store the intermediate multiplicands for karatsuba
    wire [1:0] temp1, temp2;

    // assign the high and low bits of the inputs
    assign in1_low = in1[1:0];
    assign in2_low = in2[1:0];
    assign in1_high = in1[2];
    assign in2_high = in2[2];

    // assign the intermediate multiplicands
    assign temp1 = in1_low ^ {1'b0, in1_high};
    assign temp2 = in2_low ^ {1'b0, in2_high};

    // declare wires to store multiplication results
    wire [2:0] result_low, result_mid;
    wire result_high;

    // instantiate the 2 bit karatsuba multiplier
    k2 mult_low(
        .in1(in1_low),
        .in2(in2_low),
        .out(result_low)
        );

    // instantiate the 2 bit karatsuba multiplier
    k2 mult_mid(
        .in1(temp1),
        .in2(temp2),
        .out(result_mid)
        );
    
    // instantiate the 1 bit karatsuba multiplier
    k1 mult_high(
        .in1(in1_high),
        .in2(in2_high),
        .out(result_high)
        );
    
    // combine the results into the output

    assign out[0] = result_low[0];
    assign out[1] = result_low[1];
    assign out[2] = result_low[2] ^ result_low[0] ^ result_mid[0] ^ result_high;
    assign out[3] = result_low[1] ^ result_mid[1];
    assign out[4] = result_low[2] ^ result_mid[2] ^ result_high;

endmodule
