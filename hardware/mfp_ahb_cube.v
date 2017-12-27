//////////////////////////////////////////////////////////////////////////////////
// Company:   Portland State University
// 
// 
// Design Name: Rubics cube
// Module Name: mfp_ahb_cube
// Project Name: Final project
// Target Devices: Nexys4DDR
// Tool Versions: Vivado 2017.2
// Description: Module for AHB Periperal for simulating Virtual rubix cube
// 
// Dependencies: None
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`include "mfp_ahb_const.vh"

module mfp_ahb_cube(
    input                        HCLK,
    input                        HRESETn,
    input      [  31          :0] HADDR,
    input      [  1          :0] HTRANS,
    input      [ 31          :0] HWDATA,
    input                        HWRITE,
    input                        HSEL,
    output reg [ 31          :0] HRDATA,

// memory-mapped I/O

	output	reg [`MFP_N_FACE-1:0] IO_CUBE_FRONT,
	output	reg [`MFP_N_FACE-1:0] IO_CUBE_BACK,
	output 	reg [`MFP_N_FACE-1:0] IO_CUBE_UP,
	output	reg [`MFP_N_FACE-1:0] IO_CUBE_DOWN,
	output 	reg [`MFP_N_FACE-1:0] IO_CUBE_LEFT,
	output 	reg [`MFP_N_FACE-1:0] IO_CUBE_RIGHT,
	//input  IO_TURN_ACK,
	output reg  IO_START,   
	 input [4:0] IO_PMOD,
     output reg IO_DONE,
     input [ 31          :0] IO_TIMER // Extra Port which we didn't use in the project.
);

  reg  [31:0]  HADDR_d;
  reg         HWRITE_d;
  reg         HSEL_d;
  reg  [1:0]  HTRANS_d;
  wire        we;            // write enable
   

  // delay HADDR, HWRITE, HSEL, and HTRANS to align with HWDATA for writing
  always @ (posedge HCLK) 
  begin
    HADDR_d  <= HADDR;
	HWRITE_d <= HWRITE;
	HSEL_d   <= HSEL;
	HTRANS_d <= HTRANS;
  end
  
  // overall write enable signal
  assign we = (HTRANS_d != `HTRANS_IDLE) & HSEL_d & HWRITE_d;

    always @(posedge HCLK or negedge HRESETn) begin
       if (~HRESETn) 
			begin
			IO_CUBE_FRONT <= IO_CUBE_FRONT;
			IO_CUBE_BACK <= IO_CUBE_BACK;
			IO_CUBE_UP <= IO_CUBE_UP;
			IO_CUBE_DOWN <= IO_CUBE_DOWN;
			IO_CUBE_RIGHT <= IO_CUBE_RIGHT;
			IO_CUBE_LEFT <= IO_CUBE_LEFT;
	        IO_START<=IO_START; 
            IO_DONE<=IO_DONE;
          
			end 
	   else if (we)
			 case (HADDR_d)        // writing faces of the cube
			`H_CUBE_Front:	IO_CUBE_FRONT <=HWDATA;         
			`H_CUBE_Back:	IO_CUBE_BACK <= HWDATA;            
			`H_CUBE_Up:		IO_CUBE_UP <= HWDATA;             	
			`H_CUBE_Down : 	IO_CUBE_DOWN <= HWDATA;     		
			`H_CUBE_Right:	IO_CUBE_RIGHT <= HWDATA;         
			`H_CUBE_Left :	IO_CUBE_LEFT <=	HWDATA;    
			`H_START:IO_START<=HWDATA[0]; // Control signal start
			`H_DONE:IO_DONE<=HWDATA[0]; // control signal done
			default:begin
			IO_CUBE_FRONT <= IO_CUBE_FRONT;
			IO_CUBE_BACK <= IO_CUBE_BACK;
			IO_CUBE_UP <= IO_CUBE_UP;
			IO_CUBE_DOWN <= IO_CUBE_DOWN;
			IO_CUBE_RIGHT <= IO_CUBE_RIGHT;
			IO_CUBE_LEFT <= IO_CUBE_LEFT;
			IO_START<=IO_START;
			IO_DONE<=IO_DONE;
				end
			 endcase
			end    
	always @(posedge HCLK or negedge HRESETn) begin
       if (~HRESETn)
         HRDATA <= HRDATA;
       else
	     case (HADDR)
					`H_PMOD:HRDATA <={{32-{27'b0}}, IO_PMOD}; // Reading signals from the WiFi module (NodeMCU)
					`H_TIMER:HRDATA <=IO_TIMER; // Extra signal which we didn't use in the project.
            default:    HRDATA <= 32'h00000000;
         endcase
		 end
endmodule

