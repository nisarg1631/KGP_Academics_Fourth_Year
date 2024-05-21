`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 14:27:21
// Design Name: 
// Module Name: k10
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 10 bit karatsuba multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module k10(
    input [9:0] in1,
    input [9:0] in2,
    output [18:0] out
    );
    
    // declare wires to store the low and high bits of the inputs
    wire [4:0] in1_low, in2_low;
    wire [4:0] in1_high, in2_high;
    
    // declare wires to store the intermediate multiplicands for karatsuba
    wire [4:0] temp1, temp2;

    // assign the high and low bits of the inputs
    assign in1_low = in1[4:0];
    assign in2_low = in2[4:0];
    assign in1_high = in1[9:5];
    assign in2_high = in2[9:5];

    // assign the intermediate multiplicands
    assign temp1 = in1_low ^ in1_high;
    assign temp2 = in2_low ^ in2_high;

    // declare wires to store multiplication results
    wire [8:0] result_low, result_mid;
    wire [8:0] result_high;

    // instantiate the 5 bit karatsuba multiplier
    k5 mult_low(
        .in1(in1_low),
        .in2(in2_low),
        .out(result_low)
        );

    // instantiate the 5 bit karatsuba multiplier
    k5 mult_mid(
        .in1(temp1),
        .in2(temp2),
        .out(result_mid)
        );
    
    // instantiate the 5 bit karatsuba multiplier
    k5 mult_high(
        .in1(in1_high),
        .in2(in2_high),
        .out(result_high)
        );
    
    // combine the results into the output
    
    genvar i;
    generate
        for(i = 0; i <= 4; i = i + 1) begin
            assign out[i] = result_low[i];
        end
    endgenerate
    
    generate
        for (i = 5; i <= 8; i = i + 1) begin
            assign out[i] = result_low[i] ^ result_low[i-5] ^ result_mid[i-5] ^ result_high[i-5];
        end
    endgenerate

    assign out[9] = result_low[4] ^ result_mid[4] ^ result_high[4];

    generate
        for (i = 10; i <= 13; i = i + 1) begin
            assign out[i] = result_low[i-5] ^ result_mid[i-5] ^ result_high[i-5] ^ result_high[i-10];
        end
    endgenerate

    generate
        for (i = 14; i <= 18; i = i + 1) begin
            assign out[i] = result_high[i-10];
        end
    endgenerate

endmodule
