//Author: Haranadh Chintapalli
module icon_blk( input 	clk_i, reset, input [17:0] address,
                        output [5:0] icon 
            );
    

   //CUBE COE file loaded in the block ROM
   blk_mem_gen_0 cube_mem (
      .clka(clk_i),    // input wire clka
      .addra(address),  // input wire [17 : 0] addra
      .douta(icon)  // output wire [5 : 0] douta
    ); 
        
endmodule