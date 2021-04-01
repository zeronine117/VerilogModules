//09117
//Hex display module for Common Anode
//module name: hex_display 
//input:4 bit -- output:8 bit
//|Vcc|g|f|e|d|c|b|a| <-- Bit positions
//| 7 |6|5|4|3|2|1|0|

//-------------
//Hex display
// __a__
// |   |
// f   b
// |_g_|
// |   |
// e   c
// |_d_|
//-------------

//Common Anode 
// g f Vcc a b
// | |  |  | |
// \ \  |  / /
//  \ \ | / /
//    _____
//   |     |
//   |     |
//   |_____|
//   |     |
//   |     |
//   |_____| 0
//           |
//  / / | \   \
// / /  |  \   \
// | |  |  |   |
// e d Vcc c  dp(discarded)


module hex_display(hex_num, hex_out);

input  [3:0] hex_num;
output [7:0] hex_out;    

reg [7:0] hex_reg;
assign hex_out = hex_reg;

always @(*)
    begin
				case(hex_num)
				0:  hex_reg = 8'b11000000;	//0
				1:  hex_reg = 8'b11111001;	//1
				2:  hex_reg = 8'b10100100;	//2
				3:  hex_reg = 8'b10110000;	//3
				4:  hex_reg = 8'b10011001;	//4
				5:  hex_reg = 8'b10010010;	//5
				6:  hex_reg = 8'b10000010;	//6
				7:  hex_reg = 8'b11111000;	//7
				8:  hex_reg = 8'b10000000;	//8
				9:  hex_reg = 8'b10010000;	//9
				10: hex_reg = 8'b10001000;	//A
				11: hex_reg = 8'b10000011;	//b
				12: hex_reg = 8'b11000110;	//C
				13: hex_reg = 8'b10100001;	//d
				14: hex_reg = 8'b10000110;	//E
				15: hex_reg = 8'b10001110;	//F
				endcase	
    end	  
endmodule
