`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 19:23:24
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(clk,rst,count);
input clk,rst;
parameter n=4;
output reg[n-1:0]count;
always@(posedge clk)
begin
if(rst)
count<=4'b0001;
else
count<={count[0],count[n-1:1]};
end
endmodule