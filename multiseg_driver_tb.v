`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 02:00:04 PM
// Design Name: 
// Module Name: multiseg_driver_tb
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

module multiseg_driver_tb();
    reg clk;
    reg [15:0] bcd_in = 16'b0;
    wire [3:0] seg_anode;
    wire [6:0] seg_cathode;
   
    multiseg_driver uut(.clk(clk),.bcd_in(bcd_in),.seg_anode(seg_anode),.seg_cathode(seg_cathode));
   
initial begin
    clk = 1'b0;
    forever begin
      #1 clk = ~clk;
    end
  end
   

integer i;
initial begin
//loop through numbers 0 to 9
for(i = 0; i < 10; i = i + 1) begin
bcd_in[3:0] = i;
#8184;
end

//loop through numbers 10 to 90 by 10s
for(i = 0; i < 10; i = i + 1) begin
bcd_in[7:4] = i;
#8184;
end

//loop through numbers 100 to 1000 by 100s

for(i = 0; i < 10; i = i + 1) begin
bcd_in[11:8] = i;
#8184;
end

//loop through numbers 10 to 90 by 10s
for(i = 0; i < 10; i = i + 1) begin
bcd_in[15:12] = i;
#8184;
end

$stop;

end
endmodule