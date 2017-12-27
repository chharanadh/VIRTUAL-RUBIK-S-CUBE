// mfp_nexys4_ddr.v
// December 1st, 2017
//
// Instantiate the mipsfpga system and rename signals to
// match the GPIO, LEDs and switches on Digilent's (Xilinx)
// Nexys4 DDR board
//
//Modified: Haranadh Chintapalli on 11/25/2017
//Modified: Gunadeep  on 12/1/2017
// Outputs:
// 16 LEDs (IO_LED) 
// Inputs:
// 16 Slide switches (IO_Switch),
// 5 Pushbuttons (IO_PB): {BTNU, BTND, BTNL, BTNC, BTNR}
// 

`include "mfp_ahb_const.vh"

module mfp_nexys4_ddr( 
                        input                   CLK100MHZ,
                        input                   CPU_RESETN,
                        input                   BTNU, BTND, BTNL, BTNC, BTNR, 
                        input  [`MFP_N_SW-1 :0] SW,
                        output [`MFP_N_LED-1:0] LED,
                        inout  [ 8          :1] JB,
                        input  [ 8          :1] JA,
                        input                   UART_TXD_IN,
                        output                  CA, CB, CC, CD, CE, CF, CG, DP,// declare output ports for display which are DISPOUT,DISPENOUT
                        output [7      :      0]AN,
                        output [3:0] VGA_R,
                        output [3:0] VGA_G,
                        output [3:0] VGA_B,
                        output VGA_HS,
                        output VGA_VS                                          
                        
                        );// 

  // Press btnCpuReset to reset the processor. 
        
  wire clk_50MHZ, clk_75MHZ; 
  wire tck_in, tck;    //
  wire [5:0] pbtn_op;        //pushbutton output to GPIO
  wire [15:0]swtch_op;       //switchbutton output to GPIO
  
   wire [5:0] pbtnja_op;        //pushbutton output to GPIO
   wire [15:0]swtchja_op;       //switchbutton output to GPIO
   
  wire [7:0] IO_BotCtrl;
  wire [31:0] IO_BotInfo;
  wire IO_INT_ACK;

  wire [13 : 0] worldmap_addr;
  wire [1 : 0] worldmap_data;
  wire IO_BotUpdt;
 
  reg IO_BotUpdt_Sync;
  wire horiz_sync;
  wire vert_sync;
  wire [11:0] pixel_row;
  wire [11:0] pixel_column;
  wire video_on;
  wire [1:0] worldmap_dataB;
  wire [13:0] worldmap_addrB;

   wire [`MFP_N_FACE-1:0] IO_CUBE_FRONT;
   wire [`MFP_N_FACE-1:0] IO_CUBE_BACK;
   wire [`MFP_N_FACE-1:0] IO_CUBE_UP;
     wire [`MFP_N_FACE-1:0] IO_CUBE_DOWN;
     wire [`MFP_N_FACE-1:0] IO_CUBE_LEFT;
     wire [`MFP_N_FACE-1:0] IO_CUBE_RIGHT;
    wire IO_START;
    wire IO_DONE;
    wire [ 31          :0]  IO_TIMER;
  wire [5:0] icon;
  //face wires
  wire [31:0] face1;
  wire [31:0] face2;
  wire [31:0] face3;
  wire [31:0] face4;
  wire [31:0] face5;
  wire [31:0] face6;
  reg [5:0] icon_d;

      assign face1= IO_CUBE_FRONT;
      assign face2= IO_CUBE_BACK;
      assign face3=IO_CUBE_UP;
      assign face4= IO_CUBE_DOWN;
      assign face5= IO_CUBE_LEFT;
      assign face6= IO_CUBE_RIGHT;  
  
  
  clk_wiz_0 clk_wiz_0(.clk_in1(CLK100MHZ), .clk_out1(clk_50MHZ),.clk_out2(clk_75MHZ));
  IBUF IBUF1(.O(tck_in),.I(JB[4]));
  BUFG BUFG1(.O(tck), .I(tck_in));
  
  //debounce instantiation and map input and output ports
  debounce debounce(.clk(clk_50MHZ),
                .pbtn_in({CPU_RESETN, BTNC, BTNL, BTNU, BTNR, BTND}),
                .switch_in(SW),
                .pbtn_db(pbtn_op),
                .swtch_db(swtch_op));
                
    debounce debouncelogic(.clk(clk_50MHZ),
                               .pbtn_in({JA[7],JA[4],JA[3],JA[2],JA[1]}),
                               .switch_in(SW),
                               .pbtn_db(pbtnja_op),
                               .swtch_db(swtchja_op));
    //instantiate mfp_sys and pass switch and push buttons inputs and map output signals.           
  mfp_sys mfp_sys(
			        .SI_Reset_N(pbtn_op[5]),
                    .SI_ClkIn(clk_50MHZ),
                    .HADDR(),
                    .HRDATA(),
                    .HWDATA(),
                    .HWRITE(),
					.HSIZE(),
                    .EJ_TRST_N_probe(JB[7]),
                    .EJ_TDI(JB[2]),
                    .EJ_TDO(JB[3]),
                    .EJ_TMS(JB[1]),
                    .EJ_TCK(tck),
                    .SI_ColdReset_N(JB[8]),
                    .EJ_DINT(1'b0),
                    .IO_Switch(swtch_op),//map switch opeartions
                    .IO_PB(pbtn_op[4:0]),// map push buttons
                    .IO_LED(LED),
                    .UART_RX(UART_TXD_IN),
                    .CA(CA), .CB(CB), .CC(CC), .CD(CD), .CE(CE), .CF(CF), .CG(CG), .DP(DP),
                    .AN(AN),
                    .IO_PMOD(pbtnja_op),
                   .IO_CUBE_FRONT(IO_CUBE_FRONT),
                   .IO_CUBE_BACK(IO_CUBE_BACK),
                   .IO_CUBE_UP(IO_CUBE_UP),
                   .IO_CUBE_DOWN(IO_CUBE_DOWN),
                   .IO_CUBE_LEFT(IO_CUBE_LEFT),
                   .IO_CUBE_RIGHT(IO_CUBE_RIGHT),        
                     .IO_START(IO_START),
                    .IO_DONE(IO_DONE),
                    .IO_TIMER()
					);
					


wire [17:0] address;
	//dtg instantiation
dtg dtg(.clock(clk_75MHZ), .rst(~pbtn_op[5]),.horiz_sync(VGA_HS),.vert_sync(VGA_VS),.video_on(video_on),.pixel_row(pixel_row),.pixel_column(pixel_column)); // changes
	//colorizer module instantiation
colorizer colorizer (.clk_c(clk_75MHZ),.video_on(video_on),.face1(face1),.face2(face2),.face3(face3),.face4(face4),.face5(face5),.face6(face6),.icon(icon), .vga_R(VGA_R),.vga_B(VGA_B),.vga_G(VGA_G),.start(IO_START),.done(IO_DONE)); //changes 
	//scale instantiation
 scale scale(.clk_s(clk_75MHZ), .pixel_column(pixel_column),.pixel_row(pixel_row), .vid_addr(address));
	//icon module instantiation
icon_blk icon_blk(.clk_i(clk_75MHZ), .reset(~CPU_RESETN), .icon(icon),.address(address));

			

					
endmodule
