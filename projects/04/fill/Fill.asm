// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.


// set the head of the array to the beginning of the screen
@SCREEN
D=A
@arr
M=D

// set the length of the array to 8192
@8192
D=A
@n
M=D

(LOOPBIG)
    @i
    M=0             // initialize i=0

    @KBD            // read in the keyboard value
    D=M
    @BLACK
    D;JNE

    // Turn the entire screen white here
    (WHITE)
        // if i>=n, we're finished with the screen
        @i
        D=M
        @n
        D=D-M
        @LOOPBIG
        D;JGE

        // set RAM[arr + i] = 0
        @arr
        D=M
        @i
        A=D+M
        M=0

        @i
        M=M+1

        @WHITE
        0;JMP

    (BLACK)
        // we want to turn the entire screen black here
        // if i>=n, we're finished with the screen
        @i
        D=M
        @n
        D=D-M
        @LOOPBIG
        D;JGE

        // set RAM[arr + i] = -1
        @arr
        D=M
        @i
        A=D+M
        M=-1

        @i
        M=M+1

        @BLACK
        0;JMP

    @LOOPBIG
    0;JMP