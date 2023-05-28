`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 09:35:51 PM
// Design Name: 
// Module Name: tb_even_parity
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


module tb_even_parity();

        reg [2:0] data;
    	wire even_p;
	
	    integer i;

        even_parity dut (
		.data(data), 
		.even_p(even_p));

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
            $monitor("data=%b  even_p=%b\n",data,even_p);
            #80 $finish;
        end
      
endmodule
