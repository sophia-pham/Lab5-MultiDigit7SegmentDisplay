module multiseg_driver(clk, bcd_in, seg_anode, seg_cathode);
	input clk;
	input [15:0] bcd_in; //assume input is given as bcd for Lab 5
	
	output [3:0] seg_anode; //assign each bit to each anode in the constraint file
	output [6:0] seg_cathode;
	
	wire [3:0] bcd_result;
	
	anode_generator(.clk(clk), .bcd_in(bcd_in), .seg_anode(seg_anode), .bcd_out(bcd_result);
	segment_7_binary(.data_in(bcd_result), .seg(seg_cathode));
endmodule
