`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:25:14 09/20/2022 
// Design Name: 
// Module Name:    FA 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FA(
input a,b,cin,
output s,cout
	 );
assign s = a^b^cin;
assign cout = (a & b) | (b & cin) | (cin & a);

endmodule
