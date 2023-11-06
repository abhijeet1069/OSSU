# Lecture 2

## Revision

In the CPU,
while(1){
    Fetch(Program Counter)
    Decode : Figure out which next instruction is (in CISC type architecture)
    Before executing check permission, is this OK to execute? If not OK: raise exception
    If exception is raised, OS gets involved(exception handler)
    Execute the instruction
}

## CPU virtualization mechanisms

At boot time : OS runs first in privileged(kernel) mode.
Install handlers : Tell hardware what code to run on exception/interrupt
Initialize timer interrupt
Ready to run user program

OS must track different user processes - Process List
State of process - Ready, Running
Turn Around Time - Time end - Time arrived
Response Time - Time first runs - Time arrives