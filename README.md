Project Description:
In this project, we are Implementing 3x3X3 Virtual Rubik’s cube puzzle. This game is displayed on a VGA
monitor interfaced with Nexys 4 board. In the puzzle, the Cube should be of solvable configuration and
start from the random position. The Cube has to be solved can be moving the cube in required direction
out of 18 possible cube movements. Blynk API is used to provide user interface to select these movements.
These signals are captured using ESP8266 and sent to Nexys4DDR board over PMOD Port. Cube logic is
implemented in Firmware which decodes the movement and updates the cube configuration registers.
These registers are used by colorizer module to update cube configuration


Rubik’s Cube:
Rubik’s Cube is a 3-D combination puzzle invented in 1974 by
Hungarian sculptor and professor of architecture Ernő Rubik. On a classic Rubik's Cube, each of the six
faces is covered by nine stickers, each of one of six solid colors: white, red, blue, orange, green, and yellow.
In currently sold models, white is opposite yellow, blue is opposite green, and orange is opposite red, and
the red, white and blue are arranged in that order in a clockwise arrangement. On early cubes, the position
of the colors varied from cube to cube. An internal pivot mechanism enables each face to turn
independently, thus mixing up the colors. For the puzzle to be solved, each face must be returned to have
only one color. Following are the possible Cube rotations. In our project we have included 6 more rotations
to rotate cube clockwise and anti-clockwise in X,Y and Z axis.

Hardware and Software Requirements:
Physical Hardware: Nexys4DDR Xilinx FPGA,ESP8266,Breadboard,Leds ,Connecting wires
Firmware: MIPS (Mips assembly)
HDL used: Verilog
