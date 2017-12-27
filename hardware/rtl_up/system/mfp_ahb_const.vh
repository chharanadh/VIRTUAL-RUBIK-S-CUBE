// 
// mfp_ahb_const.vh
//
// Verilog include file with AHB definitions
//
// 

//---------------------------------------------------
// Physical bit-width of memory-mapped I/O interfaces
//---------------------------------------------------
`define MFP_N_LED             16
`define MFP_N_SW              16
`define MFP_N_PB              5
//cube face register size
`define MFP_N_FACE            32
//---------------------------------------------------
// Memory-mapped I/O addresses
//---------------------------------------------------
`define H_LED_ADDR    			    (32'h1f800000)
`define H_SW_ADDR   			    (32'h1f800004)
`define H_PB_ADDR   			    (32'h1f800008)
`define H_SEVENSEGMENT_ADDR_DE      (32'h1f700000)
`define H_SEVENSEGMENT_ADDR_DV7_4   (32'h1f700004)          //define all the address required for seven segment display
`define H_SEVENSEGMENT_ADDR_DV3_0   (32'h1f700008)
`define H_SEVENSEGMENT_ADDR_DP      (32'h1f70000c)


`define H_LED_IONUM   			(4'h0)
`define H_SW_IONUM  			(4'h1)
`define H_PB_IONUM  			(4'h2)

`define H_ROJO_IO_BOTCTRL		(32'h1f8000_10)
`define H_ROJO_IO_INT_ACK		(32'h1f8000_18)
`define H_ROJO_IO_BOTINFO		(32'h1f8000_0c)
`define H_ROJO_IO_BOTUPDT_SYNC	(32'h1f8000_14)

//Cube registers
`define H_START           		(32'h1f80_0018)
`define H_CUBE_Front            (32'h1f80_0020)
`define H_CUBE_Back             (32'h1f80_0024)
`define H_CUBE_Up             	(32'h1f80_0028)
`define H_CUBE_Down        		(32'h1f80_002C)
`define H_CUBE_Right            (32'h1f80_0030)
`define H_CUBE_Left         	(32'h1f80_0034)
`define H_PMOD         	        (32'h1f80_0038)
`define H_DONE           		(32'h1f80_0040)
`define H_TIMER                 (32'h1f80_0044)
//---------------------------------------------------
// RAM addresses
//---------------------------------------------------
`define H_RAM_RESET_ADDR 		(32'h1fc?????)
`define H_RAM_ADDR	 		    (32'h0???????)
`define H_RAM_RESET_ADDR_WIDTH  (8) 
`define H_RAM_ADDR_WIDTH		(16) 

`define H_RAM_RESET_ADDR_Match  (7'h7f)
`define H_RAM_ADDR_Match 		(1'b0)
`define H_LED_ADDR_Match		(7'h7e)

//---------------------------------------------------
// AHB-Lite values used by MIPSfpga core
//---------------------------------------------------

`define HTRANS_IDLE    2'b00
`define HTRANS_NONSEQ  2'b10
`define HTRANS_SEQ     2'b11

`define HBURST_SINGLE  3'b000
`define HBURST_WRAP4   3'b010

`define HSIZE_1        3'b000
`define HSIZE_2        3'b001
`define HSIZE_4        3'b010
