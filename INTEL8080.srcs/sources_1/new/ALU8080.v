`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2024 10:49:05 PM
// Design Name: 
// Module Name: ALU8080
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


module ALU8080(
    input wire clk,
    input wire reset,
    input wire [7:0] data_in,
    input wire [7:0] data_in2,
    input wire instructionDecoded,
    input wire [2:0] registerSelect,
    input wire [2:0] operationSelect,
    output wire [7:0] data_out,
    output wire [1:0] flags_out
    );
endmodule
