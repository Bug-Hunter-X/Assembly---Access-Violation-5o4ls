# Assembly - Access Violation Bug

This repository demonstrates an uncommon bug in assembly code that can cause unexpected behavior due to accessing an invalid memory location. The code attempts to move data from a memory location pointed to by a register. However, if the register contains an incorrect value, the code will cause a segmentation fault or other unexpected behavior.

## Bug Description
The bug lies in the `mov eax, [ebx+4]` instruction.  If the value in the `ebx` register is not a valid memory address, or if the address is not properly aligned, this instruction will lead to an access violation.

## Solution
The solution involves ensuring the `ebx` register holds a valid memory address before the `mov` instruction is executed. Robust error handling should be implemented to gracefully handle situations where the memory address is invalid.