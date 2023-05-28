`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 09:29:35 PM
// Design Name: 
// Module Name: even_parity
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


module even_parity(data,even_p);
        
         input [2:0] data;
         output even_p;
         
          assign even_p = data[0]^data[1]^data[2];
endmodule
