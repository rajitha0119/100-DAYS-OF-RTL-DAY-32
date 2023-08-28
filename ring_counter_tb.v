`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 21:20:50
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb(

    );
    parameter n=4;
    reg clk,rst;
    wire[n-1:0]count;
    
    ring_counter dut(clk,rst,count);
    
    always #5 clk=~clk;
    
    initial begin
    clk=0;
    rst=0;
    #20 rst=1;
    #20 rst=0;
    #300 $finish;
    end
endmodule
