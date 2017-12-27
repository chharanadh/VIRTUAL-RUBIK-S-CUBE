// mfp_ahb.v
// 
// 
//
//Modified: Haranadh Chintapalli 11/19/2017
// AHB-lite bus module with 3 slaves: boot RAM, program RAM, 
// GPIO (memory-mapped I/O: switches and LEDs from the FPGA board).
//And Seven segment display is defined

// The module includes an address decoder and multiplexer (for 
// selecting which slave module produces HRDATA).

`include "mfp_ahb_const.vh"


module mfp_ahb
(
    input                       HCLK,
    input                       HRESETn,
    input      [ 31         :0] HADDR,
    input      [  2         :0] HBURST,
    input                       HMASTLOCK,
    input      [  3         :0] HPROT,
    input      [  2         :0] HSIZE,
    input      [  1         :0] HTRANS,
    input      [ 31         :0] HWDATA,
    input                       HWRITE,
    output     [ 31         :0] HRDATA,
    output                      HREADY,
    output                      HRESP,
    input                       SI_Endian,

// memory-mapped I/O
    input      [`MFP_N_SW-1 :0] IO_Switch,
    input      [`MFP_N_PB-1 :0] IO_PB,
    output     [`MFP_N_LED-1:0] IO_LED, 
    output 		CA, CB, CC, CD, CE, CF, CG, DP,
    output  [ 7 :0] AN,                       //declare output signals
	
/*	output [7:0] IO_BotCtrl,
    input [31:0] IO_BotInfo,
    output IO_INT_ACK,
    input IO_BotUpdt_Sync*/
    //Cube ports
         input [4:0] IO_PMOD,
        output	 [`MFP_N_FACE-1:0] IO_CUBE_FRONT,
        output    [`MFP_N_FACE-1:0] IO_CUBE_BACK,
        output     [`MFP_N_FACE-1:0] IO_CUBE_UP,
        output     [`MFP_N_FACE-1:0] IO_CUBE_DOWN,
        output      [`MFP_N_FACE-1:0] IO_CUBE_LEFT,
        output      [`MFP_N_FACE-1:0] IO_CUBE_RIGHT,
        output  IO_START,
        output IO_DONE,
        input [ 31          :0]  IO_TIMER
);


  wire [31:0] HRDATA2, HRDATA1,HRDATA3, HRDATA0;
  wire [ 4:0] HSEL;
  reg  [ 4:0] HSEL_d;

  assign HREADY = 1;
  assign HRESP = 0;
	
  // Delay select signal to align for reading data
  always @(posedge HCLK)
    HSEL_d <= HSEL;

  // Module 0 - boot ram
  mfp_ahb_b_ram mfp_ahb_b_ram(HCLK, HRESETn, HADDR, HBURST, HMASTLOCK, HPROT, HSIZE,
                              HTRANS, HWDATA, HWRITE, HRDATA0, HSEL[0]);
  // Module 1 - program ram
  mfp_ahb_p_ram mfp_ahb_p_ram(HCLK, HRESETn, HADDR, HBURST, HMASTLOCK, HPROT, HSIZE,
                              HTRANS, HWDATA, HWRITE, HRDATA1, HSEL[1]);
   // Module 2 - GPIO
  mfp_ahb_gpio mfp_ahb_gpio(HCLK, HRESETn, HADDR[5:2], HTRANS, HWDATA, HWRITE, HSEL[2], 
                            HRDATA2, IO_Switch, IO_PB, IO_LED);
			
  
  // Module 3 - Seven Segment Display
  mfp_ahb_sevenseg mfp_ahb_sevensegment(HCLK,HRESETn,HSEL[3],HADDR,HWDATA,CA, CB, CC, CD, CE, CF, CG, DP,AN);
                                                                                                //module is instantiated
 
/*
  //Module 4- ROJO
   mfp_ahb_ROJO mfp_ahb_ROJO(HCLK, HRESETn, HADDR, HTRANS, HWDATA, HWRITE, HSEL[4],
								HRDATA3, IO_BotCtrl, IO_BotInfo, IO_INT_ACK, IO_BotUpdt_Sync);*/
								
  //cube peripheral
  mfp_ahb_cube mfp_ahb_cube(HCLK, HRESETn, HADDR, HTRANS, HWDATA, HWRITE, HSEL[4],HRDATA3,IO_CUBE_FRONT,IO_CUBE_BACK,IO_CUBE_UP,IO_CUBE_DOWN,IO_CUBE_LEFT,IO_CUBE_RIGHT,IO_START,IO_PMOD,IO_DONE,IO_TIMER);
  
  
   ahb_decoder ahb_decoder(HADDR, HSEL);
  ahb_mux ahb_mux(HCLK, HSEL_d, HRDATA3,HRDATA2, HRDATA1, HRDATA0, HRDATA);
  
endmodule


module ahb_decoder
(
    input  [31:0] HADDR,
    output [ 4:0] HSEL
);

  // Decode based on most significant bits of the address
  assign HSEL[0] = (HADDR[28:22] == 7'h7f); // 128 KB RAM  at 0xbfc00000 (physical: 0x1fc00000)
  assign HSEL[1] = (HADDR[28]    == 1'b0);       // 256 KB RAM at 0x80000000 (physical: 0x00000000)
  assign HSEL[2] = (HADDR[28:0] ==  29'h1f800000 || HADDR[28:0] == 29'h1f800004 || HADDR[28:0]== 29'h1f800008 );     // GPIO at 0xbf800000 (physical: 0x1f800000)
  assign HSEL[3] = (HADDR[28:0]  == 29'h1f700000 || HADDR[28:0]  == 29'h1f700004 || HADDR[28:0]  == 29'h1f700008 || HADDR[28:0]  == 29'h1f70000c );    // Seven Segment Display at 0xbf700000 (physical: 0x1F700000)
  //assign HSEL[4] = (HADDR[28:0]== 29'h1f80000c || HADDR[28:0]== 29'h1f800010 || HADDR[28:0]== 29'h1f800014 || HADDR[28:0]== 29'h1f800018);
  assign HSEL[4] = (HADDR[28:0] == `H_CUBE_Front|| HADDR[28:0] == `H_CUBE_Back || HADDR[28:0] == `H_CUBE_Up ||HADDR[28:0] == `H_CUBE_Down ||HADDR[28:0] == `H_CUBE_Right ||HADDR[28:0] == `H_CUBE_Left||HADDR[28:0] == `H_START||HADDR[28:0] ==`H_PMOD||HADDR[28:0] == `H_DONE||HADDR[28:0] ==`H_TIMER); 
  endmodule




module ahb_mux
(
    input             HCLK,
    input      [ 4:0] HSEL,
    input      [31:0] HRDATA3,
    input [31:0] HRDATA2, 
    input [31:0] HRDATA1, 
    input [31:0] HRDATA0,
    output reg [31:0] HRDATA
);

always @(*)
begin
      casez ({HSEL[4],HSEL[2:0]})		  
	      4'b???1 :    HRDATA = HRDATA0;
	      4'b??10 :    HRDATA = HRDATA1;
	      4'b?100 :    HRDATA = HRDATA2;
	      4'b1000 :	  HRDATA = HRDATA3;
	      default :   HRDATA = HRDATA1;
      endcase
end
endmodule

