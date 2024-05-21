`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 20:12:47
// Design Name: 
// Module Name: multiplier_tb
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


module multiplier_tb;

    reg [162:0] in1, in2;
    reg [162:0] data1[0:99999], data2[0:99999];
    wire [162:0] out;
    
    multiplier mult(
        .in1(in1),
        .in2(in2),
        .out(out)
        );
    integer i, write_data;
    initial begin
        $readmemb("input_output_files/data1.txt", data1);
        $readmemb("input_output_files/data2.txt", data2);
        write_data = $fopen("input_output_files/out.txt");
        
        for(i=0; i<100000; i=i+1) begin
            in1 = data1[i];
            in2 = data2[i];
            #40;
            $fdisplay(write_data, "%b", out);
        end
        
        $fclose(write_data);
    end
    
endmodule
