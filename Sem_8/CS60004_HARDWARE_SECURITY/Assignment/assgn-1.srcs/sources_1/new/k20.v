`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 14:27:21
// Design Name: 
// Module Name: k20
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 20 bit karatsuba multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module k20(
    input [19:0] in1,
    input [19:0] in2,
    output [38:0] out
    );
    
    // declare wires to store the low and high bits of the inputs
    wire [9:0] in1_low, in2_low;
    wire [9:0] in1_high, in2_high;
    
    // declare wires to store the intermediate multiplicands for karatsuba
    wire [9:0] temp1, temp2;

    // assign the high and low bits of the inputs
    assign in1_low = in1[9:0];
    assign in2_low = in2[9:0];
    assign in1_high = in1[19:10];
    assign in2_high = in2[19:10];

    // assign the intermediate multiplicands
    assign temp1 = in1_low ^ in1_high;
    assign temp2 = in2_low ^ in2_high;

    // declare wires to store multiplication results
    wire [18:0] result_low, result_mid;
    wire [18:0] result_high;

    // instantiate the 10 bit karatsuba multiplier
    k10 mult_low(
        .in1(in1_low),
        .in2(in2_low),
        .out(result_low)
        );

    // instantiate the 10 bit karatsuba multiplier
    k10 mult_mid(
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
        for(i = 0; i <= 9; i = i + 1) begin
            assign out[i] = result_low[i];
        end
    endgenerate
    
    generate
        for (i = 10; i <= 18; i = i + 1) begin
            assign out[i] = result_low[i] ^ result_low[i-10] ^ result_mid[i-10] ^ result_high[i-10];
        end
    endgenerate

    assign out[19] = result_low[9] ^ result_mid[9] ^ result_high[9];

    generate
        for (i = 20; i <= 28; i = i + 1) begin
            assign out[i] = result_low[i-10] ^ result_mid[i-10] ^ result_high[i-10] ^ result_high[i-20];
        end
    endgenerate

    generate
        for (i = 29; i <= 38; i = i + 1) begin
            assign out[i] = result_high[i-20];
        end
    endgenerate

endmodule
