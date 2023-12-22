# HACK Programming

## Registers

Two 16-bit registers. 'D' and 'A'
'D' stores data values.
However, 'A' can be used both as an data and address register using @value


Hack computer is a 16 bit machine, consisting of a CPU, two separate memory modules serving as
instruction memory and data memory, and two memory mapped I/O devices : a screen and keyboard.

0. Arithmetic and Logic operations
    ADD R2, R1, R3 // R2 = R1+R3

1. Working with registers and memory

    Memory access modes
    a. Direct addressing
        LOAD R1,67 //R1 = Memory[67]

    b. Immediate addressing
        LOADI R1,67 // R1 = 67

    c. Indirect addressing
        LOAD* R2,R1 //R2=Memory[R1]

    Memory location 'M' refers to the memory word whose address is the current value of register A.

    '@value', where value is either a number or a symbol representing a number.

2. Branching
3. Variables
4. Iteration
5. Pointers
6. Input/Output

D: data register
A: address/data register
M:  the currently selected memory register, M=RAM[A]

HACK is case sensetive.

## Address instruction

A-instruction is used to set the A register to a 15-bit value.

## Compute instruction

The infinite loop at the program's end is the standard way to terminate the execution of HACK programs.
