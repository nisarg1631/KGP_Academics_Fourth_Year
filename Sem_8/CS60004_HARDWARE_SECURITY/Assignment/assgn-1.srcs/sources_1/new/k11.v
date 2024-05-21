`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 14:27:21
// Design Name: 
// Module Name: k11
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 11 bit karatsuba multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module k11(
    input [10:0] in1,
    input [10:0] in2,
    output [20:0] out
    );
    
    // declare wires to store the low and high bits of the inputs
    wire [5:0] in1_low, in2_low;
    wire [4:0] in1_high, in2_high;
    
    // declare wires to store the intermediate multiplicands for karatsuba
    wire [5:0] temp1, temp2;

    // assign the high and low bits of the inputs
    assign in1_low = in1[5:0];
    assign in2_low = in2[5:0];
    assign in1_high = in1[10:6];
    assign in2_high = in2[10:6];

    // assign the intermediate multiplicands
    assign temp1 = in1_low ^ {1'b0, in1_high};
    assign temp2 = in2_low ^ {1'b0, in2_high};

    // declare wires to store multiplication results
    wire [10:0] result_low, result_mid;
    wire [8:0] result_high;

    // instantiate the 6 bit karatsuba multiplier
    k6 mult_low(
        .in1(in1_low),
        .in2(in2_low),
        .out(result_low)
        );

    // instantiate the 6 bit karatsuba multiplier
    k6 mult_mid(
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
        for(i = 0; i <= 5; i = i + 1) begin
            assign out[i] = result_low[i];
        end
    endgenerate
    
    generate
        for (i = 6; i <= 10; i = i + 1) begin
            assign out[i] = result_low[i] ^ result_low[i-6] ^ result_mid[i-6] ^ result_high[i-6];
        end
    endgenerate

    assign out[11] = result_low[5] ^ result_mid[5] ^ result_high[5];

    generate
        for (i = 12; i <= 14; i = i + 1) begin
            assign out[i] = result_low[i-6] ^ result_mid[i-6] ^ result_high[i-6] ^ result_high[i-12];
        end
    endgenerate
    
    assign out[15] = result_low[9] ^ result_mid[9] ^ result_high[3];
    assign out[16] = result_low[10] ^ result_mid[10] ^ result_high[4];

    generate
        for (i = 17; i <= 20; i = i + 1) begin
            assign out[i] = result_high[i-12];
        end
    endgenerate

endmodule
