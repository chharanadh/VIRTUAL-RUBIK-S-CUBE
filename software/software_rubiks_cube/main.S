# ------------------------------
# scratch pad ram variables
# -----------------------------

# centers of the cube
SP_CENTER_F : 	.byte 	0x06
SP_CENTER_B : 	.byte 	0x05
SP_CENTER_R : 	.byte 	0x02
SP_CENTER_L : 	.byte 	0x03
SP_CENTER_U : 	.byte 	0x04
SP_CENTER_D : 	.byte 	0x07

# edges of the front face
SP_EDGE_FU	:	.byte	0x06
SP_EDGE_FR	:	.byte	0x06
SP_EDGE_FL	:	.byte	0x06
SP_EDGE_FD	:	.byte	0x06

# edges of the back face
SP_EDGE_BU	:	.byte	0x05
SP_EDGE_BR	:	.byte	0x05
SP_EDGE_BL	:	.byte	0x05
SP_EDGE_BD	:	.byte	0x05

# edges of the right face 
SP_EDGE_RU	:	.byte	0x02
SP_EDGE_RF	:	.byte	0x02
SP_EDGE_RD	:	.byte	0x02
SP_EDGE_RB	:	.byte	0x02

# edges of the left face
SP_EDGE_LU	:	.byte	0x03
SP_EDGE_LF	:	.byte	0x03
SP_EDGE_LD	:	.byte	0x03
SP_EDGE_LB	:	.byte	0x03

# edges of the up face
SP_EDGE_UF	:	.byte	0x04
SP_EDGE_UR	:	.byte	0x04
SP_EDGE_UL	:	.byte	0x04
SP_EDGE_UB	:	.byte	0x04

# edges of the down face
SP_EDGE_DF	:	.byte	0x07
SP_EDGE_DR	:	.byte	0x07
SP_EDGE_DL	:	.byte	0x07
SP_EDGE_DB	:	.byte	0x07

# corners of the front face
SP_CORNER_FUR	:	.byte	0x06
SP_CORNER_FUL	:	.byte	0x06
SP_CORNER_FDR	:	.byte	0x06
SP_CORNER_FDL	:	.byte	0x06

# corners of the back face
SP_CORNER_BUR	:	.byte	0x05
SP_CORNER_BUL	:	.byte	0x05
SP_CORNER_BDR	:	.byte	0x05
SP_CORNER_BDL	:	.byte	0x05

# corners of the right face
SP_CORNER_RUF	:	.byte	0x02
SP_CORNER_RUB	:	.byte	0x02
SP_CORNER_RDF	:	.byte	0x02
SP_CORNER_RDB	:	.byte	0x02


# corners of the left face
SP_CORNER_LUF	:	.byte	0x03
SP_CORNER_LUB	:	.byte	0x03
SP_CORNER_LDF	:	.byte	0x03
SP_CORNER_LDB	:	.byte	0x03

# corners of the up face
SP_CORNER_UFR	:	.byte	0x04
SP_CORNER_UFL	:	.byte	0x04
SP_CORNER_UBR	:	.byte	0x04
SP_CORNER_UBL	:	.byte	0x04

# corners of the down face
SP_CORNER_DFR	:	.byte	0x07
SP_CORNER_DFL	:	.byte	0x07
SP_CORNER_DBR	:	.byte	0x07
SP_CORNER_DBL	:	.byte	0x07


####################
# Temporary variables for all the cubelets to be updated on turns
######################
TEMP_CENTER_F : 	.byte 	0
TEMP_CENTER_B : 	.byte 	0
TEMP_CENTER_R : 	.byte 	0
TEMP_CENTER_L : 	.byte 	0
TEMP_CENTER_U : 	.byte 	0
TEMP_CENTER_D : 	.byte 	0

TEMP_EDGE_FU	:	.byte	0
TEMP_EDGE_FR	:	.byte	0
TEMP_EDGE_FL	:	.byte	0
TEMP_EDGE_FD	:	.byte	0

TEMP_EDGE_BU	:	.byte	0
TEMP_EDGE_BR	:	.byte	0
TEMP_EDGE_BL	:	.byte	0
TEMP_EDGE_BD	:	.byte	0

TEMP_EDGE_RU	:	.byte	0
TEMP_EDGE_RF	:	.byte	0
TEMP_EDGE_RD	:	.byte	0
TEMP_EDGE_RB	:	.byte	0

TEMP_EDGE_LU	:	.byte	0
TEMP_EDGE_LF	:	.byte	0
TEMP_EDGE_LD	:	.byte	0
TEMP_EDGE_LB	:	.byte	0

TEMP_EDGE_UF	:	.byte	0
TEMP_EDGE_UR	:	.byte	0
TEMP_EDGE_UL	:	.byte	0
TEMP_EDGE_UB	:	.byte	0

TEMP_EDGE_DF	:	.byte	0
TEMP_EDGE_DR	:	.byte	0
TEMP_EDGE_DL	:	.byte	0
TEMP_EDGE_DB	:	.byte	0

TEMP_CORNER_FUR	:	.byte	0
TEMP_CORNER_FUL	:	.byte	0
TEMP_CORNER_FDR	:	.byte	0
TEMP_CORNER_FDL	:	.byte	0

TEMP_CORNER_BUR	:	.byte	0
TEMP_CORNER_BUL	:	.byte	0
TEMP_CORNER_BDR	:	.byte	0
TEMP_CORNER_BDL	:	.byte	0

TEMP_CORNER_RUF	:	.byte	0
TEMP_CORNER_RUB	:	.byte	0
TEMP_CORNER_RDF	:	.byte	0
TEMP_CORNER_RDB	:	.byte	0

TEMP_CORNER_LUF	:	.byte	0
TEMP_CORNER_LUB	:	.byte	0
TEMP_CORNER_LDF	:	.byte	0
TEMP_CORNER_LDB	:	.byte	0

TEMP_CORNER_UFR	:	.byte	0
TEMP_CORNER_UFL	:	.byte	0
TEMP_CORNER_UBR	:	.byte	0
TEMP_CORNER_UBL	:	.byte	0

TEMP_CORNER_DFR	:	.byte	0
TEMP_CORNER_DFL	:	.byte	0
TEMP_CORNER_DBR	:	.byte	0
TEMP_CORNER_DBL	:	.byte	0
SP_DONE			:	.byte	0

########################
# Ports for the AHB Lite interface Memory mapped I/O
########################
PORT_SEVENSEG_EN 	= 0xbf700000		# (o) 7 Segment enable
PORT_SEVENSEG_HGH	= 0xbf700004		# (o) 7 Segment Higher Display
PORT_SEVENSEG_LOW	= 0xbf700008		# (o) 7 Segment Lower Display
PORT_SEVENSEG_DP	= 0xbf70000C		# (o) 7 segment Decimal Point Display

PORT_FACEFRONT		=	0xbf800020
PORT_FACERIGHT		=	0xbf800024
PORT_FACEUP			=	0xbf800028
PORT_FACEDOWN		=	0xbf80002C
PORT_FACEBACK		=	0xbf800030
PORT_FACELEFT		=	0xbf800034
PORT_BLYNKINPUT		=	0xbf800038
PORT_START			= 	0xbf800018
PORT_DONE			=	0xbf800040

# scratch pad variable for checking for long pressed inputs and turn only once per push 
SP_VARIABLE	:	.byte	0


SP_OLD_INPUT	:	.word	0

.text
.globl main
main:
	lui   $12, 0xbf80    				# $12 = address of LEDs (0xbf800000)
	addiu $13, $12, 4    				# $13 = address of switches
	#lb $15, SP_VARIABLE
	#sb $15, 0($12)
	addiu $10,$12,8 # $10 = address of PB

	li $8, PORT_START
	sw $0, 0($8)
	li $8, PORT_DONE
	sw $0, 0($8)


	lw $22, 0($10)

# loop of random cube turns to form a random face by the time user inputs the push buttons

startloop: 	jal makefront
			nop
			jal makeback
			nop
			jal makeup
			nop
			jal makedown
			nop
			jal makeright
			nop
			jal makeleft
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal right
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop

			jal left
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal backinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal left
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal zplus
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal frontinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop

			jal xplus
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal upinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal backinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop

			jal zminus
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop

			jal upinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop

			jal down
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal downinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal yplus
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal upinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop

			jal leftinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal up
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal backinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal up
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal xminus
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal rightinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal front
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal xminus
			nop
			jal make_cube
			nop

			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal downinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop

			jal front
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal rightinv
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop
			jal back
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop

			jal zplus
			nop
			jal make_cube
			nop
			lw $23, 0($10)
			bne $23, $22, loop
			nop

			jal left
			nop
			jal make_cube
			nop

			lw $23, 0($10)
			bne $23, $22, loop
			nop

			jal xplus
			nop
			jal make_cube
			nop


			j startloop
			nop

# Displaying the formed random configuration

loop	:	j display
			nop

# loop for getting requested inputs from nodeMCU(PMOD JA)
			
loop2	:		li $8, PORT_START
				li $9, 0x01
				sw $9, 0($8)
				li $8, PORT_BLYNKINPUT
				lw $11, 0($8)
				andi $11, $11, 0x1f
				sw $11, 0($12)

				beq $11, $0, abouttoturn
				nop


				lb $18, SP_VARIABLE

				li $19, 0x01
				andi $19, $19, 0x01
				beq $18, $19, loop2
				nop
				//li $15, 0x00


				li $15, 0x13
				beq $11, $15, turnright
				nop
				li $15, 0x02
				beq $11, $15, turnrightinv
				nop
				li $15, 0x03
				beq $11, $15, turnleft
				nop
				li $15, 0x04
				beq $11, $15, turnleftinv
				nop
				li $15, 0x05
				beq $11, $15, turnup
				nop
				li $15, 0x06
				beq $11, $15, turnupinv
				nop
				li $15, 0x07
				beq $11, $15, turndown
				nop
				li $15, 0x08
				beq $11, $15, turndowninv
				nop
				li $15, 0x09
				beq $11, $15, turnfront
				nop
				li $15, 0x0a
				beq $11, $15, turnfrontinv
				nop
				li $15, 0x0b
				beq $11, $15, turnback
				nop
				li $15, 0x0c
				beq $11, $15, turnbackinv
				nop
				li $15, 0x0d
				beq $11, $15, turnxplus
				nop
				li $15, 0x0e
				beq $11, $15, turnxminus
				nop
				li $15, 0x0f
				beq $11, $15, turnyplus
				nop
				li $15, 0x10
				beq $11, $15, turnyminus
				nop
				li $15, 0x11
				beq $11, $15, turnzplus
				nop
				li $15, 0x12
				beq $11, $15, turnzminus
				nop

				j display
				nop

abouttoturn	:	add $17, $0, $0
				sb $17, SP_VARIABLE
				#sb $0, SP_VARIABLE
				j loop2
				nop

# on recieving the inputs to perform the turn and display the changed output
turnright	:	jal right
				nop
				jal make_cube
				nop
				jal check_complete
				nop
				li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnrightinv	:
				jal rightinv
				nop
				jal	make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnleft	:	jal left
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnleftinv	:	jal leftinv
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnup	:		jal up
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnupinv	:	jal upinv
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turndown	:	jal down
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turndowninv	:	jal downinv
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnfront	:	jal front
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnfrontinv:					jal frontinv
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnback	:	jal back
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnbackinv	:	jal backinv
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnxplus	:	jal xplus
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnxminus	:	jal xminus
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnyplus	:	jal yplus
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnyminus	:	jal yminus
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnzplus	:	jal zplus
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

turnzminus	:	jal zminus
				nop
				jal make_cube
				nop
				jal check_complete
				nop
								li $19, 0x01
				sb $19, SP_VARIABLE
				#jal delay_10hz
				nop
				j display
				nop

# update the cube registers in AHB bus for updating the display

display	:
			jal makefront
			nop
			jal makeback
			nop
			jal makeup
			nop
			jal makedown
			nop
			jal makeright
			nop
			jal makeleft
			nop
			#lb $8, SP_DONE
			#li $9, 0x01
			#bne $8, $9, loop
			#nop
			j loop2
			nop

##################################
# code for checking if the current configuration resembles a solved cube
##################################
check_complete	:	#front face
					lb $8, SP_CENTER_F
					lb $9, SP_CORNER_FUL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_FU
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_FUR
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_FL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_FR
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_FDL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_FD
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_FDR
					bne $8, $9, exitcheck
					nop
					# BACKFACE
					lb $8, SP_CENTER_B
					lb $9, SP_CORNER_BUL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_BU
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_BUR
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_BL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_BR
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_BDL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_BD
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_BDR
					bne $8, $9, exitcheck
					nop
					#UPFACE
					lb $8, SP_CENTER_U
					lb $9, SP_CORNER_UBL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_UB
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_UBR
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_UL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_UR
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_UFL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_UF
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_UFR
					bne $8, $9, exitcheck
					nop
					#DOWNFACE
					lb $8, SP_CENTER_D
					lb $9, SP_CORNER_DBL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_DB
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_DBR
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_DL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_DR
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_DFL
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_DF
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_DFR
					bne $8, $9, exitcheck
					nop
					#RIGHT
					lb $8, SP_CENTER_R
					lb $9, SP_CORNER_RUF
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_RU
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_RUB
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_RF
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_RB
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_RDF
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_RD
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_RDB
					bne $8, $9, exitcheck
					nop
					#LEFTFACE
					lb $8, SP_CENTER_L
					lb $9, SP_CORNER_LUF
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_LU
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_LUB
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_LF
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_LB
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_LDF
					bne $8, $9, exitcheck
					nop
					lb $9, SP_EDGE_LD
					bne $8, $9, exitcheck
					nop
					lb $9, SP_CORNER_LDB
					bne $8, $9, exitcheck
					nop
					li $8, PORT_DONE
					li $9, 0x01
					sw $9, 0($8)
					sb $9, SP_DONE
					j exitcheck
					nop

exitcheck	:	jr $ra
				nop
#################################
# making faces from the scratchpad variables denoting the facelets
############################################3

makefront	:	add $8, $0, $0
				add $9, $0, $0
				lb $8, SP_CORNER_FUL


				sll $8, $8, 3
				lb $9, SP_EDGE_FU
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_FUR
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_FL
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CENTER_F
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_FR
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_FDL
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_FD
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_FDR
				or $8, $8, $9
				li $2, PORT_FACEFRONT
				sw $8, 0($2)
				jr $ra

###################

makeback	:	add $8, $0, $0
				add $9, $0, $0
				lb $8, SP_CORNER_BUL


				sll $8, $8, 3
				lb $9, SP_EDGE_BU
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_BUR
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_BL
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CENTER_B
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_BR
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_BDL
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_BD
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_BDR
				or $8, $8, $9
				li $2, PORT_FACEBACK
				sw $8, 0($2)
				jr $ra

#############33

makeup		:	add $8, $0, $0
				add $9, $0, $0
				lb $8, SP_CORNER_UBL


				sll $8, $8, 3
				lb $9, SP_EDGE_UB
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_UBR
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_UL
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CENTER_U
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_UR
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_UFL
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_UF
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_UFR
				or $8, $8, $9
				li $2, PORT_FACEUP
				sw $8, 0($2)
				jr $ra

#######################3


makedown	:	add $8, $0, $0
				add $9, $0, $0
				lb $8, SP_CORNER_DBL

				sll $8, $8, 3
				lb $9, SP_EDGE_DB
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_DBR
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_DL
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CENTER_D
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_DR
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_DFL
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_DF
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_DFR
				or $8, $8, $9

				li $2, PORT_FACEDOWN
				sw $8, 0($2)
				jr $ra

##############333

makeright	:	add $8, $0, $0
				add $9, $0, $0
				lb $8, SP_CORNER_RUF

				sll $8, $8, 3
				lb $9, SP_EDGE_RU
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_RUB
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_RF
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CENTER_R
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_RB
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_RDF
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_RD
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_RDB
				or $8, $8, $9

				li $2, PORT_FACERIGHT
				sw $8, 0($2)
				jr $ra

###################

makeleft	:	add $8, $0, $0
				add $9, $0, $0
				lb $8, SP_CORNER_LUF
				sll $8, $8, 3
				lb $9, SP_EDGE_LU
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_LUB
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_LF
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CENTER_L
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_LB
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_LDF
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_EDGE_LD
				or $8, $8, $9
				sll $8, $8, 3
				lb $9, SP_CORNER_LDB
				or $8, $8, $9

		li $2, PORT_FACELEFT
				sw $8, 0($2)
				jr $ra
######################################################
# updating the cube after a turn changes are processed in the temporary cubelets
######################################################
make_cube	:	lb $8, TEMP_CENTER_F
				sb $8, SP_CENTER_F

				lb $8, TEMP_CENTER_B
				sb $8, SP_CENTER_B

				lb $8, TEMP_CENTER_R
				sb $8, SP_CENTER_R

				lb $8, TEMP_CENTER_L
				sb $8, SP_CENTER_L

				lb $8, TEMP_CENTER_U
				sb $8, SP_CENTER_U

				lb $8, TEMP_CENTER_D
				sb $8, SP_CENTER_D

				# front edges

				lb $8, TEMP_EDGE_FU
				sb $8, SP_EDGE_FU

				lb $8, TEMP_EDGE_FR
				sb $8, SP_EDGE_FR

				lb $8, TEMP_EDGE_FL
				sb $8, SP_EDGE_FL

				lb $8, TEMP_EDGE_FD
				sb $8, SP_EDGE_FD

				# back edges

				lb $8, TEMP_EDGE_BU
				sb $8, SP_EDGE_BU

				lb $8, TEMP_EDGE_BR
				sb $8, SP_EDGE_BR

				lb $8, TEMP_EDGE_BL
				sb $8, SP_EDGE_BL

				lb $8, TEMP_EDGE_BD
				sb $8, SP_EDGE_BD

				# right edges

				lb $8, TEMP_EDGE_RF
				sb $8, SP_EDGE_RF

				lb $8, TEMP_EDGE_RB
				sb $8, SP_EDGE_RB

				lb $8, TEMP_EDGE_RU
				sb $8, SP_EDGE_RU

				lb $8, TEMP_EDGE_RD
				sb $8, SP_EDGE_RD

				# left edges

				lb $8, TEMP_EDGE_LF
				sb $8, SP_EDGE_LF

				lb $8, TEMP_EDGE_LU
				sb $8, SP_EDGE_LU

				lb $8, TEMP_EDGE_LB
				sb $8, SP_EDGE_LB

				lb $8, TEMP_EDGE_LD
				sb $8, SP_EDGE_LD

				# up edges

				lb $8, TEMP_EDGE_UF
				sb $8, SP_EDGE_UF

				lb $8, TEMP_EDGE_UB
				sb $8, SP_EDGE_UB

				lb $8, TEMP_EDGE_UR
				sb $8, SP_EDGE_UR

				lb $8, TEMP_EDGE_UL
				sb $8, SP_EDGE_UL

				# down edges

				lb $8, TEMP_EDGE_DF
				sb $8, SP_EDGE_DF

				lb $8, TEMP_EDGE_DB
				sb $8, SP_EDGE_DB

				lb $8, TEMP_EDGE_DR
				sb $8, SP_EDGE_DR

				lb $8, TEMP_EDGE_DL
				sb $8, SP_EDGE_DL

				# front corners

				lb $8, TEMP_CORNER_FUR
				sb $8, SP_CORNER_FUR

				lb $8, TEMP_CORNER_FUL
				sb $8, SP_CORNER_FUL

				lb $8, TEMP_CORNER_FDR
				sb $8, SP_CORNER_FDR

				lb $8, TEMP_CORNER_FDL
				sb $8, SP_CORNER_FDL

				# back CORNERS

				lb $8, TEMP_CORNER_BUR
				sb $8, SP_CORNER_BUR

				lb $8, TEMP_CORNER_BUL
				sb $8, SP_CORNER_BUL

				lb $8, TEMP_CORNER_BDR
				sb $8, SP_CORNER_BDR

				lb $8, TEMP_CORNER_BDL
				sb $8, SP_CORNER_BDL

				# right CORNERS

				lb $8, TEMP_CORNER_RUF
				sb $8, SP_CORNER_RUF

				lb $8, TEMP_CORNER_RUB
				sb $8, SP_CORNER_RUB

				lb $8, TEMP_CORNER_RDF
				sb $8, SP_CORNER_RDF

				lb $8, TEMP_CORNER_RDB
				sb $8, SP_CORNER_RDB

				# left CORNERS

				lb $8, TEMP_CORNER_LUF
				sb $8, SP_CORNER_LUF

				lb $8, TEMP_CORNER_LUB
				sb $8, SP_CORNER_LUB

				lb $8, TEMP_CORNER_LDF
				sb $8, SP_CORNER_LDF

				lb $8, TEMP_CORNER_LDB
				sb $8, SP_CORNER_LDB

				# up CORNERS

				lb $8, TEMP_CORNER_UFR
				sb $8, SP_CORNER_UFR

				lb $8, TEMP_CORNER_UFL
				sb $8, SP_CORNER_UFL

				lb $8, TEMP_CORNER_UBR
				sb $8, SP_CORNER_UBR

				lb $8, TEMP_CORNER_UBL
				sb $8, SP_CORNER_UBL

				# down CORNERS

				lb $8, TEMP_CORNER_DFR
				sb $8, SP_CORNER_DFR

				lb $8, TEMP_CORNER_DFL
				sb $8, SP_CORNER_DFL

				lb $8, TEMP_CORNER_DBR
				sb $8, SP_CORNER_DBR

				lb $8, TEMP_CORNER_DBL
				sb $8, SP_CORNER_DBL

				jr $ra  				# return to calling function
###################################################################				
# updating temporary cubelets for each turn requests.
#################################################################################################################
xplus		:	# front face
				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_DFR

				jr $ra
################################################################
xminus		:	# front face
				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_DFR

				jr $ra
################################################
yplus		:	# front face
				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_DFR

				jr $ra
##########################################################3
yminus		:	# front face
				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_DFR

				jr $ra
############################################
zplus		:	# front face
				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_DFR

				jr $ra
######################################################
zminus		:	# front face
				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_DFR

				jr $ra
#################################################3
right		:	# front face
				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_DFR

				jr $ra
###################################################3
rightinv	:	# front face
				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_DFR

				jr $ra
######################################################3
leftinv		:	# front face
				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_DFR

				jr $ra
################################################33
left		:	# front face
				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_DFR

				jr $ra
###############################################3
front		:	# front face
				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_DFR

				jr $ra
##############################################33
frontinv	:	# front face
				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_DFR

				jr $ra
#########################################
back		:	# front face
				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_DFR

				jr $ra
########################################333333
backinv		:	# front face
				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_DFR

				jr $ra
#####################################################
up			:	# front face
				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_DFR

				jr $ra
###############################################
upinv		:	# front face
				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_DFR

				jr $ra
##########################################
down		:	# front face
				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_DFR

				jr $ra
###################################3333333333333
downinv		:	# front face
				lb $8, SP_CORNER_FUL
				sb $8, TEMP_CORNER_FUL

				lb $8, SP_EDGE_FU
				sb $8, TEMP_EDGE_FU

				lb $8, SP_CORNER_FUR
				sb $8, TEMP_CORNER_FUR

				lb $8, SP_EDGE_FL
				sb $8, TEMP_EDGE_FL

				lb $8, SP_CENTER_F
				sb $8, TEMP_CENTER_F

				lb $8, SP_EDGE_FR
				sb $8, TEMP_EDGE_FR

				lb $8, SP_CORNER_RDF
				sb $8, TEMP_CORNER_FDL

				lb $8, SP_EDGE_RD
				sb $8, TEMP_EDGE_FD

				lb $8, SP_CORNER_RDB
				sb $8, TEMP_CORNER_FDR

# BACK face
				lb $8, SP_CORNER_BUL
				sb $8, TEMP_CORNER_BUL

				lb $8, SP_EDGE_BU
				sb $8, TEMP_EDGE_BU

				lb $8, SP_CORNER_BUR
				sb $8, TEMP_CORNER_BUR

				lb $8, SP_EDGE_BL
				sb $8, TEMP_EDGE_BL

				lb $8, SP_CENTER_B
				sb $8, TEMP_CENTER_B

				lb $8, SP_EDGE_BR
				sb $8, TEMP_EDGE_BR

				lb $8, SP_CORNER_LDF
				sb $8, TEMP_CORNER_BDL

				lb $8, SP_EDGE_LD
				sb $8, TEMP_EDGE_BD

				lb $8, SP_CORNER_LDB
				sb $8, TEMP_CORNER_BDR

# RIGHT face
				lb $8, SP_CORNER_RUF
				sb $8, TEMP_CORNER_RUF

				lb $8, SP_EDGE_RU
				sb $8, TEMP_EDGE_RU

				lb $8, SP_CORNER_RUB
				sb $8, TEMP_CORNER_RUB

				lb $8, SP_EDGE_RF
				sb $8, TEMP_EDGE_RF

				lb $8, SP_CENTER_R
				sb $8, TEMP_CENTER_R

				lb $8, SP_EDGE_RB
				sb $8, TEMP_EDGE_RB

				lb $8, SP_CORNER_BDR
				sb $8, TEMP_CORNER_RDF

				lb $8, SP_EDGE_BD
				sb $8, TEMP_EDGE_RD

				lb $8, SP_CORNER_BDL
				sb $8, TEMP_CORNER_RDB

# LEFT face
				lb $8, SP_CORNER_LUF
				sb $8, TEMP_CORNER_LUF

				lb $8, SP_EDGE_LU
				sb $8, TEMP_EDGE_LU

				lb $8, SP_CORNER_LUB
				sb $8, TEMP_CORNER_LUB

				lb $8, SP_EDGE_LF
				sb $8, TEMP_EDGE_LF

				lb $8, SP_CENTER_L
				sb $8, TEMP_CENTER_L

				lb $8, SP_EDGE_LB
				sb $8, TEMP_EDGE_LB

				lb $8, SP_CORNER_FDR
				sb $8, TEMP_CORNER_LDF

				lb $8, SP_EDGE_FD
				sb $8, TEMP_EDGE_LD

				lb $8, SP_CORNER_FDL
				sb $8, TEMP_CORNER_LDB

				# UP face
				lb $8, SP_CORNER_UBL
				sb $8, TEMP_CORNER_UBL

				lb $8, SP_EDGE_UB
				sb $8, TEMP_EDGE_UB

				lb $8, SP_CORNER_UBR
				sb $8, TEMP_CORNER_UBR

				lb $8, SP_EDGE_UL
				sb $8, TEMP_EDGE_UL

				lb $8, SP_CENTER_U
				sb $8, TEMP_CENTER_U

				lb $8, SP_EDGE_UR
				sb $8, TEMP_EDGE_UR

				lb $8, SP_CORNER_UFL
				sb $8, TEMP_CORNER_UFL

				lb $8, SP_EDGE_UF
				sb $8, TEMP_EDGE_UF

				lb $8, SP_CORNER_UFR
				sb $8, TEMP_CORNER_UFR

				# DOWN face
				lb $8, SP_CORNER_DFL
				sb $8, TEMP_CORNER_DBL

				lb $8, SP_EDGE_DL
				sb $8, TEMP_EDGE_DB

				lb $8, SP_CORNER_DBL
				sb $8, TEMP_CORNER_DBR

				lb $8, SP_EDGE_DF
				sb $8, TEMP_EDGE_DL

				lb $8, SP_CENTER_D
				sb $8, TEMP_CENTER_D

				lb $8, SP_EDGE_DB
				sb $8, TEMP_EDGE_DR

				lb $8, SP_CORNER_DFR
				sb $8, TEMP_CORNER_DFL

				lb $8, SP_EDGE_DR
				sb $8, TEMP_EDGE_DF

				lb $8, SP_CORNER_DBR
				sb $8, TEMP_CORNER_DFR

				jr $ra

#######################################################################################



