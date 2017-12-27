`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PSU 
// 
// 
// 
// 
// Module Name: mfp_ahb_sevenseg

// Description: This module is developed for mfp_ahp_sevenseg display peripheral where the display is controlled based on the address 
//and seven segment display is selcted based on HSEL signal.This module instantiates mfp_ahp_sevensegtimer and maps all the iput and output signals
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//module for seven segment display
module mfp_ahb_sevenseg(                        // declare inputs and output ports based on AHP_lite bus
   input        clk,
   input        resetn,
   input        HSEL,
   input [31:0] HADDR,
   input [31:0] HWDATA,
   
   //output for seven segment 
   output reg 			 CA, CB, CC, CD, CE, CF, CG, DP,
    output reg [ 7	     :0] AN
   );
   
reg     [7 :0]  EN;
reg     [63:0]  DIGITS;
reg     [7 :0]  dp;  
wire [7:0] DISPENOUT;
 wire [7:0] DISPOUT;

reg  [31:0] HADDR_d;
reg         HSEL_d;

//instantiate mfp_ahb_sevensegtimer
mfp_ahb_sevensegtimer mfp_ahb_sevensegtimer1(
                        .clk(clk),
                        .resetn(resetn),
                        .EN(EN),
                        .DIGITS(DIGITS),
                        .dp(dp),
                        .DISPENOUT(DISPENOUT),
                        .DISPOUT(DISPOUT));  

						
always @ (posedge clk) 
  begin
        HADDR_d  <= HADDR;
		HSEL_d   <= HSEL;
  end						
   
 //at the change in clock or reset                      
always@(posedge clk or negedge resetn)
begin  


	CA <= DISPOUT[6];
	CB <= DISPOUT[5];
	CC <= DISPOUT[4];
	CD <= DISPOUT[3];
	CE <= DISPOUT[2];
	CF <= DISPOUT[1];
	CG <= DISPOUT[0];
	
	DP <= DISPOUT[7];
	
	AN <= DISPENOUT;




                       
if(~resetn)
begin
EN <= 8'hff; //enable the seven segment display
DIGITS <=64'hffffffffffffffff;     // the display is off as the outputs are active high 
dp <= 8'hff;

	CA <= 1'b1;
	CB <= 1'b1;
	CC <= 1'b1;
	CD <= 1'b1;
	CE <= 1'b1;
	CF <= 1'b1;
	CG <= 1'b1;
	
	DP <= 1'b1;
	
	AN <= 8'hff;






end

else if(HSEL_d)// HSEL[3] is passed 
begin  
 case(HADDR_d)
 
 `H_SEVENSEGMENT_ADDR_DE : EN <= HWDATA[7:0];               // Based on the address defined in the mfp_constant.vh file all the cases are defined
 `H_SEVENSEGMENT_ADDR_DV7_4: DIGITS[63:32] <= HWDATA;
 `H_SEVENSEGMENT_ADDR_DV3_0: DIGITS[31:0] <= HWDATA;
 `H_SEVENSEGMENT_ADDR_DP: dp <= HWDATA[7:0];
 default:       begin
                EN <= 8'hff;
                DIGITS <= 64'hffffffffffffffff;
                dp <= 8'hff;
                end                                         // none of the cases match default is executed
 endcase
end

end                       
endmodule

