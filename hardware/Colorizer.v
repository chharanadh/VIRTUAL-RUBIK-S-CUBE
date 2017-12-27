module colorizer(
                input wire clk_c,
                input video_on,
				input [31:0] face1, // Inputs fro MIPS software
				input [31:0] face2,
				input [31:0] face3,
				input [31:0] face4,
				input [31:0] face5,
				input [31:0] face6,
                input [5:0] icon, // Pixels from CUBE COE file
                input start, // Control signals MIPS
                input done,
                output reg [3:0] vga_R,
                output reg [3:0] vga_B,
                output reg [3:0] vga_G
                );
    
      
    always @(posedge clk_c) begin
        if (video_on == 1'b1) begin
			
			case (icon) // fill colors based on pixel value in the COE
				
				6'd1 : begin
						vga_R <= 4'b0000;
						vga_G <= 4'b0000; 
						vga_B <= 4'b0000;
						end
				6'd0 : begin
						vga_R <= 4'b0000;
						vga_G <= 4'b0000;
						vga_B <= 4'b0000;
						end
//face1						
				6'd2 : begin
						case (face1[26:24]) // based on the cubie color received from MIPS for face1 update cubie color
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000; // Blue
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111; // Green
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111; // White
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000; //Orange
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000; //Red
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111; // Yellow
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001; // Pink
									vga_B <= 4'b1011;
									end								
						endcase
						end
						
				6'd3 : begin
						case (face1[23:21])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd4 : begin
						case (face1[20:18])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd5 : begin
						case (face1[17:15])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end					
						endcase
						end						

				6'd6 : begin
						case (face1[14:12])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end							
						endcase
						end				

				6'd7 : begin
						case (face1[11:9])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end							
						endcase
						end
				6'd8 : begin
						case (face1[8:6])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end							
						endcase
						end

				6'd9 : begin
						case (face1[5:3])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end							
						endcase
						end

				6'd10 : begin 
						case (face1[2:0])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end
						endcase
						end

//face2						
				6'd11 : begin // based on the cubie color received from MIPS for face2 update cubie color
						case (face2[26:24])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end
						endcase
						end
						
				6'd12 : begin
						case (face2[23:21])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd13 : begin
						case (face2[20:18])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end									
						endcase
						end

				6'd14 : begin
						case (face2[17:15])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end						

				6'd15 : begin
						case (face2[14:12])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end				

				6'd16 : begin
						case (face2[11:9])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end
				6'd17 : begin
						case (face2[8:6])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd18 : begin
						case (face2[5:3])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd19 : begin
						case (face2[2:0])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end


//face3

				6'd20 : begin // based on the cubie color received from MIPS for face3 update cubie color
						case (face3[26:24])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end
						
				6'd21 : begin
						case (face3[23:21])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd22 : begin
						case (face3[20:18])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd23 : begin
						case (face3[17:15])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end						

				6'd24 : begin
						case (face3[14:12])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end				

				6'd25 : begin
						case (face3[11:9])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end
				6'd26 : begin
						case (face3[8:6])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd27 : begin
						case (face3[5:3])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd28 : begin
						case (face3[2:0])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end


//face4

				6'd29 : begin // based on the cubie color received from MIPS for face4 update cubie color
						case (face4[26:24])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end
						
				6'd30 : begin
						case (face4[23:21])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd31 : begin
						case (face4[20:18])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd32 : begin
						case (face4[17:15])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end						

				6'd33 : begin
						case (face4[14:12])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end				

				6'd34 : begin
						case (face4[11:9])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end
				6'd35 : begin
						case (face4[8:6])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd36 : begin
						case (face4[5:3])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd37 : begin
						case (face4[2:0])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

						
//face5

				6'd38 : begin // based on the cubie color received from MIPS for face5 update cubie color
						case (face5[26:24])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end
						
				6'd39 : begin
						case (face5[23:21])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd40 : begin
						case (face5[20:18])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd41 : begin
						case (face5[17:15])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end						

				6'd42 : begin
						case (face5[14:12])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end				

				6'd43 : begin
						case (face5[11:9])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end
				6'd44 : begin
						case (face5[8:6])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd45 : begin
						case (face5[5:3])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd46 : begin
						case (face5[2:0])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

						
//face6

				6'd47 : begin  // based on the cubie color received from MIPS for face6 update cubie color
						case (face6[26:24])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end
						
				6'd48 : begin
						case (face6[23:21])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd49 : begin
						case (face6[20:18])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd50 : begin
						case (face6[17:15])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end						

				6'd51 : begin
						case (face6[14:12])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end				

				6'd52 : begin
						case (face6[11:9])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end
				6'd53 : begin
						case (face6[8:6])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd54 : begin
						case (face6[5:3])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end

				6'd55 : begin
						case (face6[2:0])
							3'b010: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b1111;
									end
							3'b011: begin
									vga_R <= 4'b0000;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							3'b100: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b1111;
									end									
							3'b101: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1000;
									vga_B <= 4'b0000;
									end
							3'b110: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end
							3'b111: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b1111;
									vga_B <= 4'b0000;
									end
							default: begin
									vga_R <= 4'b1111;
									vga_G <= 4'b0001;
									vga_B <= 4'b1011;
									end								
						endcase
						end
			6'd56 : begin    //title
                         vga_R <= 4'b1000;
                         vga_G <= 4'b1100; // Sky Blue
                         vga_B <= 4'b1111;
                    end 
 			6'd57 : begin   //Names
                                 vga_R <= 4'b1111;
                                 vga_G <= 4'b1111; // Yellow
                                 vga_B <= 4'b0000;
                            end
                                                               
			6'd58 :  begin
			             if(start)
			                     begin
                                         vga_R <= 4'b0000; // Black
                                         vga_G <= 4'b0000; 
                                         vga_B <= 4'b0000;
                                    end 
                         else       
                             begin // Print "Press PB to Start"
                                 vga_R <= 4'b1111;
                                 vga_G <= 4'b0000; // Red
                                 vga_B <= 4'b0000;
                            end      
                                                      
                       end              
                                                       
  			6'd59: begin
  			                   if(done) begin // Print " Congratulations"
                                                 vga_R <= 4'b0000;
                                                 vga_G <= 4'b1111; // Green
                                                 vga_B <= 4'b0000;
                                                 
                                          end
                                  else
                                  begin
                                                vga_R <= 4'b0000;
                                                vga_G <= 4'b0000;
                                                vga_B <= 4'b0000;
                                                                                           
                                    end
                                     
                      end                                                      
			
			
						
						
				default : begin
							vga_R <= 4'b1111;
							vga_G <= 4'b0001;
							vga_B <= 4'b1011;
							end	

						
			endcase
		end

		else 
							      begin
									vga_R <= 4'b0000;
									vga_G <= 4'b0000;
									vga_B <= 4'b0000;
									end	
end
        
        
        

                            
endmodule
