# Virtualization

Each running program thinks it has its own CPU and its own private memory.

Key aspects for virtualization:

* Efficiency
* Secure (restricted access for programs)

CPU virtualization
1 physical CPU to Many virtual CPU
Time Sharing : Giving each process a share of CPU time. Also, known as multi-programming.

## Abstraction : Process (running program)

Components of a process:

* Address Space - code, stack, heap
* Registers - program counter, stack pointer, general purpose registers
* I/O state

Policies : Higher level decision on mechanisms
Mechanisms : How things work

## Core Mechanism

* Limited Direct Execution - We don't directly run code on CPU (hardware).

OS is the first program to run.

What if a user process wants to do something restricted?
What if OS wants to stop "A" and run "B"?
What if "A" does something that is slow (disk, network I/O)?

Mode : CPU bit
    OS : kernel mode (can do anything on system)
    User Program : user mode (can do limited number of things)
                trap - hardware instruction to switch from user to restricted kernel mode
                return from trap

Process -- trap --> OS -- return from trap -->
        (system calls)

