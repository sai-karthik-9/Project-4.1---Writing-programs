// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
// Load R0 into the D register
@0
D=M

// Check if R0 is zero; if so, set R2 to zero and end the program
@END
D;JEQ

// Initialize R2 to zero (to store the result of multiplication)
@2
M=0

// Load R1 into the A register (for the loop counter)
@1
A=M
D=A

// Loop label for multiplication
(LOOP)

// Add R0 to R2
@0
D=M
@2
M=D+M

// Decrement R1
@1
M=M-1

// If R1 is not zero, repeat the loop
@LOOP
D=M
@LOOP
D;JGT

// Label for the end of the program
(END)
@END
0;JMP