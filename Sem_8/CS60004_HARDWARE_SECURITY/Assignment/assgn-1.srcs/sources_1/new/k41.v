`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 14:27:21
// Design Name: 
// Module Name: k41
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 41 bit karatsuba multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module k41(
    input [40:0] in1,
    input [40:0] in2,
    output [80:0] out
    );
    
    // declare wires to store the low and high bits of the inputs
    wire [20:0] in1_low, in2_low;
    wire [19:0] in1_high, in2_high;
    
    // declare wires to store the intermediate multiplicands for karatsuba
    wire [20:0] temp1, temp2;

    // assign the high and low bits of the inputs
    assign in1_low = in1[20:0];
    assign in2_low = in2[20:0];
    assign in1_high = in1[40:21];
    assign in2_high = in2[40:21];

    // assign the intermediate multiplicands
    assign temp1 = in1_low ^ {1'b0, in1_high};
    assign temp2 = in2_low ^ {1'b0, in2_high};

    // declare wires to store multiplication results
    wire [40:0] result_low, result_mid;
    wire [38:0] result_high;

    // instantiate the 21 bit karatsuba multiplier
    k21 mult_low(
        .in1(in1_low),
        .in2(in2_low),
        .out(result_low)
        );

    // instantiate the 21 bit karatsuba multiplier
    k21 mult_mid(
        .in1(temp1),
        .in2(temp2),
        .out(result_mid)
        );
    
    // instantiate the 20 bit karatsuba multiplier
    k20 mult_high(
        .in1(in1_high),
        .in2(in2_high),
        .out(result_high)
        );
    
    // combine the results into the output
    
    genvar i;
    generate
        for(i = 0; i <= 20; i = i + 1) begin
            assign out[i] = result_low[i];
        end
    endgenerate
    
    generate
        for (i = 21; i <= 40; i = i + 1) begin
            assign out[i] = result_low[i] ^ result_low[i-21] ^ result_mid[i-21] ^ result_high[i-21];
        end
    endgenerate

    assign out[41] = result_low[20] ^ result_mid[20] ^ result_high[20];

    generate
        for (i = 42; i <= 59; i = i + 1) begin
            assign out[i] = result_low[i-21] ^ result_mid[i-21] ^ result_high[i-21] ^ result_high[i-42];
        end
    endgenerate
    
    assign out[60] = result_low[39] ^ result_mid[39] ^ result_high[18];
    assign out[61] = result_low[40] ^ result_mid[40] ^ result_high[19];

    generate
        for (i = 62; i <= 80; i = i + 1) begin
            assign out[i] = result_high[i-42];
        end
    endgenerate

endmodule
