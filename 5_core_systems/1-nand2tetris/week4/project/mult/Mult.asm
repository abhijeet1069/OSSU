// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// Assumes that R0 >= 0, R1 >= 0, and R0 * R1 < 32768.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)


// RAM[0] , RAM[1] will be loaded manually
// RAM[2] = RAM[0] + RAM[1] + 17

@2
M=0

@0 //if R0 is <=0 result is 0
D=M
@END
D;JLE

@1 //if R1 is <=0 result is 0
D=M
@END
D;JLE

(LOOP)

@1
D=M

@2
M=M+D

@0
M=M-1
D=M
@END
D;JEQ

@LOOP
0;JMP //end of loop

(END)
@END
0;JMP