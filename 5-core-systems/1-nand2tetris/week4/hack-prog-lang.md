# HACK instruction set

HACK instruction set consists of two types of instructions.

## Address instruction

@19
here, A <- 19

## Compute instruction

reg = {0|1|-1}
here, reg is {A|D|M}

For ex:
D = 0
A = -1
M = 1

reg1=reg2
here, reg1 is {A|D|M}
reg2 is [-]{A|D|M}

For ex:
D = A
D = M
M = -M

reg = reg1 op reg2
here, reg1 is {A|D|M}
reg2 is {A|D|M|1}
op is {+ | - | & | |}

For ex:
D=D+M
A=A+1
M=D+1

## Branching Instructions

Jump to instruction stored in ROM[A]

D;JGT //if D>0 jump
D;JGE //if D>=0 jump
D;JLT //if D<0 jump
D;JLE //if D<=0 jump
D;JEQ //if D=0 jump
D;JNE //if D!=0 jump
0;JMP //jump

## Variables

//x=512
@512
D=A
@x
M=D

@R0
D=M
