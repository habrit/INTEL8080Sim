`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2024 10:41:03 PM
// Design Name: 
// Module Name: register8080
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
// REGISTER MODULE FOR INTEL 8080 SIMULATION. 
// CONTAINS 7 REGISTERS, 1 FLAGS REGISTER, 1 ADDRESS REGISTER
// PAIRED AS SUCH: B,C; D,E; H,L;
// TEMP REGISTER: W,Z
//////////////////////////////////////////////////////////////////////////////////



/*
Register Array Module for Intel 8080 Simulation
W | Z
B | C
D | E
H | L
Stack Pointer
Program Counter
Increments/Decrementer Address Latch

Register Select


(As described in the Intel8080 Data sheet)

Register array is connected to the multiplexer module
And then sends data to address buffer

Instruction Register is connected to the multiplexer module as biDirectional, as well as connected to register Select
Data Bus Buffer/Latch is connected to the incrementer/decrementer address latch

Multiplexer is bidirectional connected to the internal Data Bus



*/


module register8080(
    input wire clk,
    input wire reset,
    input wire [7:0] data_in,
    input wire instructionDecoded,
    input wire [2:0] registerSelect,
    output wire [7:0] data_out,
    output wire [15:0] address_out,
    output wire [1:0] flags_out,
    );

    reg [7:0] B,C,D,E,H,L,W,Z;
    reg [15:0] address;
    reg [1:0] flags;
    reg [15:0] programCounter;


    always @(posedge clk or posedge reset)
        begin
            if (reset)
                begin
                    B <= 8'b0;
                    C <= 8'b0;
                    D <= 8'b0;
                    E <= 8'b0;
                    H <= 8'b0;
                    L <= 8'b0;
                    W <= 8'b0;
                    Z <= 8'b0;
                    address <= 16'b0;
                    flags <= 2'b0;
                end


        end

endmodule
