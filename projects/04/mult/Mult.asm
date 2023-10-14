// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

@sum
M=0         // sum = 0
@i
M=0         // i = 0

(LOOP)      // this is where we check if i < R1
@i
D=M
@R1
D=D-M
@BREAK
D;JGE       // if i - R1 >= 0, jump to END

@R0
D=M
@sum
M=M+D       // sum = sum + R0

@i
M = M + 1   // i = i + 1

@LOOP
0;JMP

(BREAK)
@sum
D=M
@R2
M=D         // R2 = sum

(END)
@END
0;JMP