`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 14:27:21
// Design Name: 
// Module Name: k81
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 81 bit karatsuba multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module k81(
    input [80:0] in1,
    input [80:0] in2,
    output [160:0] out
    );
    
    // declare wires to store the low and high bits of the inputs
    wire [40:0] in1_low, in2_low;
    wire [39:0] in1_high, in2_high;
    
    // declare wires to store the intermediate multiplicands for karatsuba
    wire [40:0] temp1, temp2;

    // assign the high and low bits of the inputs
    assign in1_low = in1[40:0];
    assign in2_low = in2[40:0];
    assign in1_high = in1[80:41];
    assign in2_high = in2[80:41];

    // assign the intermediate multiplicands
    assign temp1 = in1_low ^ {1'b0, in1_high};
    assign temp2 = in2_low ^ {1'b0, in2_high};

    // declare wires to store multiplication results
    wire [80:0] result_low, result_mid;
    wire [78:0] result_high;

    // instantiate the 41 bit karatsuba multiplier
    k41 mult_low(
        .in1(in1_low),
        .in2(in2_low),
        .out(result_low)
        );

    // instantiate the 41 bit karatsuba multiplier
    k41 mult_mid(
        .in1(temp1),
        .in2(temp2),
        .out(result_mid)
        );
    
    // instantiate the 40 bit karatsuba multiplier
    k40 mult_high(
        .in1(in1_high),
        .in2(in2_high),
        .out(result_high)
        );
    
    // combine the results into the output
    
    genvar i;
    generate
        for(i = 0; i <= 40; i = i + 1) begin
            assign out[i] = result_low[i];
        end
    endgenerate
    
    generate
        for (i = 41; i <= 80; i = i + 1) begin
            assign out[i] = result_low[i] ^ result_low[i-41] ^ result_mid[i-41] ^ result_high[i-41];
        end
    endgenerate

    assign out[81] = result_low[40] ^ result_mid[40] ^ result_high[40];

    generate
        for (i = 82; i <= 119; i = i + 1) begin
            assign out[i] = result_low[i-41] ^ result_mid[i-41] ^ result_high[i-41] ^ result_high[i-82];
        end
    endgenerate
    
    assign out[120] = result_low[79] ^ result_mid[79] ^ result_high[38];
    assign out[121] = result_low[80] ^ result_mid[80] ^ result_high[39];

    generate
        for (i = 122; i <= 160; i = i + 1) begin
            assign out[i] = result_high[i-82];
        end
    endgenerate

endmodule
