`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 14:27:21
// Design Name: 
// Module Name: k21
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 21 bit karatsuba multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module k21(
    input [20:0] in1,
    input [20:0] in2,
    output [40:0] out
    );
    
    // declare wires to store the low and high bits of the inputs
    wire [10:0] in1_low, in2_low;
    wire [9:0] in1_high, in2_high;
    
    // declare wires to store the intermediate multiplicands for karatsuba
    wire [10:0] temp1, temp2;

    // assign the high and low bits of the inputs
    assign in1_low = in1[10:0];
    assign in2_low = in2[10:0];
    assign in1_high = in1[20:11];
    assign in2_high = in2[20:11];

    // assign the intermediate multiplicands
    assign temp1 = in1_low ^ {1'b0, in1_high};
    assign temp2 = in2_low ^ {1'b0, in2_high};

    // declare wires to store multiplication results
    wire [20:0] result_low, result_mid;
    wire [18:0] result_high;

    // instantiate the 11 bit karatsuba multiplier
    k11 mult_low(
        .in1(in1_low),
        .in2(in2_low),
        .out(result_low)
        );

    // instantiate the 11 bit karatsuba multiplier
    k11 mult_mid(
        .in1(temp1),
        .in2(temp2),
        .out(result_mid)
        );
    
    // instantiate the 10 bit karatsuba multiplier
    k10 mult_high(
        .in1(in1_high),
        .in2(in2_high),
        .out(result_high)
        );
    
    // combine the results into the output
    
    genvar i;
    generate
        for(i = 0; i <= 10; i = i + 1) begin
            assign out[i] = result_low[i];
        end
    endgenerate
    
    generate
        for (i = 11; i <= 20; i = i + 1) begin
            assign out[i] = result_low[i] ^ result_low[i-11] ^ result_mid[i-11] ^ result_high[i-11];
        end
    endgenerate

    assign out[21] = result_low[10] ^ result_mid[10] ^ result_high[10];

    generate
        for (i = 22; i <= 29; i = i + 1) begin
            assign out[i] = result_low[i-11] ^ result_mid[i-11] ^ result_high[i-11] ^ result_high[i-22];
        end
    endgenerate
    
    assign out[30] = result_low[19] ^ result_mid[19] ^ result_high[8];
    assign out[31] = result_low[20] ^ result_mid[20] ^ result_high[9];

    generate
        for (i = 32; i <= 40; i = i + 1) begin
            assign out[i] = result_high[i-22];
        end
    endgenerate

endmodule
