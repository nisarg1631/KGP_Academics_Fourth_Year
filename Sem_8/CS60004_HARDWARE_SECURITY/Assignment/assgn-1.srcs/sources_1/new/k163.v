`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 14:27:21
// Design Name: 
// Module Name: k163
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 163 bit karatsuba multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module k163(
    input [162:0] in1,
    input [162:0] in2,
    output [324:0] out
    );
    
    // declare wires to store the low and high bits of the inputs
    wire [81:0] in1_low, in2_low;
    wire [80:0] in1_high, in2_high;
    
    // declare wires to store the intermediate multiplicands for karatsuba
    wire [81:0] temp1, temp2;

    // assign the high and low bits of the inputs
    assign in1_low = in1[81:0];
    assign in2_low = in2[81:0];
    assign in1_high = in1[162:82];
    assign in2_high = in2[162:82];

    // assign the intermediate multiplicands
    assign temp1 = in1_low ^ {1'b0, in1_high};
    assign temp2 = in2_low ^ {1'b0, in2_high};

    // declare wires to store multiplication results
    wire [162:0] result_low, result_mid;
    wire [160:0] result_high;

    // instantiate the 82 bit karatsuba multiplier
    k82 mult_low(
        .in1(in1_low),
        .in2(in2_low),
        .out(result_low)
        );

    // instantiate the 82 bit karatsuba multiplier
    k82 mult_mid(
        .in1(temp1),
        .in2(temp2),
        .out(result_mid)
        );
    
    // instantiate the 81 bit karatsuba multiplier
    k81 mult_high(
        .in1(in1_high),
        .in2(in2_high),
        .out(result_high)
        );
    
    // combine the results into the output
    
    genvar i;
    generate
        for(i = 0; i <= 81; i = i + 1) begin
            assign out[i] = result_low[i];
        end
    endgenerate
    
    generate
        for (i = 82; i <= 162; i = i + 1) begin
            assign out[i] = result_low[i] ^ result_low[i-82] ^ result_mid[i-82] ^ result_high[i-82];
        end
    endgenerate

    assign out[163] = result_low[81] ^ result_mid[81] ^ result_high[81];

    generate
        for (i = 164; i <= 242; i = i + 1) begin
            assign out[i] = result_low[i-82] ^ result_mid[i-82] ^ result_high[i-82] ^ result_high[i-164];
        end
    endgenerate
    
    assign out[243] = result_low[161] ^ result_mid[161] ^ result_high[79];
    assign out[244] = result_low[162] ^ result_mid[162] ^ result_high[80];

    generate
        for (i = 245; i <= 324; i = i + 1) begin
            assign out[i] = result_high[i-164];
        end
    endgenerate

endmodule
