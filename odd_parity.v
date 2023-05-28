`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 09:48:32 PM
// Design Name: 
// Module Name: odd_parity
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


module odd_parity(data,odd_p);

        input [2:0] data;
        output odd_p;
        
        assign odd_p=~(data[0]^data[1]^data[2]);
        
endmodule
