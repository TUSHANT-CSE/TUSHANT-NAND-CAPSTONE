// Box.asm
// Student: Tushant
// Roll number: 2501730294
// K = 94; K mod 4 = 2; width = 48 pixels (3 words)
// Starts at screen row 94; height = 20 rows.
// A key press draws the box; releasing all keys clears it.

(START)
    @KBD
    D=M
    @DRAW
    D;JNE
    @CLEAR
    0;JMP

(DRAW)
    // First word of row 94 = SCREEN + 32*94 = 19392
    @19392
    D=A
    @R13
    M=D

    @20
    D=A
    @R14
    M=D

(DRAW_LOOP)
    // Draw three consecutive 16-pixel words (48 pixels)
    @R13
    A=M
    M=-1

    @R13
    D=M
    @1
    D=D+A
    @R13
    A=D
    M=-1

    @R13
    D=M
    @2
    D=D+A
    @R13
    A=D
    M=-1

    // Move to the same column in the next screen row (32 words)
    @R13
    D=M
    @32
    D=D+A
    @R13
    M=D

    @R14
    MD=M-1
    @DRAW_LOOP
    D;JGT

    @START
    0;JMP

(CLEAR)
    // Reset pointer to the first word of row 94
    @19392
    D=A
    @R13
    M=D

    @20
    D=A
    @R14
    M=D

(CLEAR_LOOP)
    // Clear the same three consecutive words
    @R13
    A=M
    M=0

    @R13
    D=M
    @1
    D=D+A
    @R13
    A=D
    M=0

    @R13
    D=M
    @2
    D=D+A
    @R13
    A=D
    M=0

    // Move to the next screen row
    @R13
    D=M
    @32
    D=D+A
    @R13
    M=D

    @R14
    MD=M-1
    @CLEAR_LOOP
    D;JGT

    @START
    0;JMP
