module segment_7_binary(
    input [3:0] data_in,
    output reg [6:0] seg
    
    );
    
    
    //behavioral
	always @* begin
		case (data_in)
			0: seg = 7'b0000001;
			1'b0001: seg = 7'b1001111; //can write cases either way
			//... write for all cases up to 9 (highest digit)
			2: seg = 7'b0010010;
			3: seg = 7'b0000110;
			4: seg = 7'b1001100;
			5: seg = 7'b0100100;
			6: seg = 7'b0100000;
			7: seg = 7'b0001111;
			8: seg = 7'b0000000;
			9: seg = 7'b0000100;
			default: seg = 7'b1111111; //default is no display
		endcase
	end
    
endmodule
