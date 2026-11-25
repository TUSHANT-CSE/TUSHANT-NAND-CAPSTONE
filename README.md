# Nand2Tetris Capstone: Make the Computer Draw a Box

**Student:** Tushant  
**Roll number:** 2501730294  
**K:** 94

## Personalised requirements
- `K = 94`
- `K mod 3 = 1`: assembler reports invalid instructions with the original source line number.
- `K mod 4 = 2`: box width = `16 × (2 + 1) = 48` pixels (3 Hack screen words).
- Starting row = `94`; height = `20` rows.
- Screen base = `16384`; first box word = `16384 + 32 × 94 = 19392`.

## Folder guide
- `Part_B_Assembler/assembler.py`: two-pass Hack assembler.
- `Part_C_Box/Box.asm`: assembly program that draws the box while a key is pressed and clears it when no key is pressed.
- `Part_C_Box/Box.hack`: assembled machine-code output.
- `Part_A_Computer/`: reserved for your own verified Project 05 HDL files. Do not submit this folder as complete until you add and test the HDL implementation.
- `Report/`: editable project report.

## Run the assembler
From this project folder in a terminal:

```bash
python Part_B_Assembler/assembler.py Part_C_Box/Box.asm --k 94
```

The output is written to `Part_C_Box/Box.hack`.

## Test in the Nand2Tetris CPU Emulator
1. Open the official Nand2Tetris tools / web IDE.
2. Load `Part_C_Box/Box.asm` or its `.hack` output in the CPU Emulator.
3. Run the program and press a keyboard key: the box should appear.
4. Release the key: the box should clear.
5. Capture genuine screenshots of the emulator and add them to the report.

## Important submission note
The assembler output is generated locally, but the CPU Emulator and Project 05 computer HDL have not been independently verified here. Add your actual HDL files and genuine test screenshots before final submission.
