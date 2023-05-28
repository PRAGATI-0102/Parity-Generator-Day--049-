`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 09:50:33 PM
// Design Name: 
// Module Name: tb_odd_parity
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


module tb_odd_parity();

        reg [2:0] data;
        wire odd_p;
        
        integer i;
            odd_parity dut (
            .data(data), 
            .odd_p(odd_p));
    
        initial 
        begin
            for(i=0;i<8;i=i+1) 
            begin
                data=i;
                #10;
            end
        end
    
        initial 
        begin
            $monitor("data=%d  odd_p=%d\n",data,odd_p);
            #80 $finish;
        end
        
endmodule
