module scale(
input clk_s,
input [11:0] pixel_column,
input [11:0] pixel_row,
output reg [17:0] vid_addr);

reg [8:0] pixel_column_d;
reg [8:0] pixel_row_d;

always @(posedge clk_s)

begin

pixel_column_d <= pixel_column/2; // Scaling down the dtg pixels to 512 x 384
pixel_row_d <= pixel_row/2;
vid_addr <= { pixel_row_d , pixel_column_d};

end


endmodule

 

