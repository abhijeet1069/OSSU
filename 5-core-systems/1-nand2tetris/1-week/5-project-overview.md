# Project Overview

## Multiplexor

if(sel == 0)
  out = a
else
 out = b

## Demultiplexer

if(sel == 0)
    {a,b}={in,0}
else
    {a,b}={0,in}

There is no recursion in HDL files.

Multi-bit busses are indexed right to left.
If A is a 16 bit bus, then A[0] is right-most bit, and A[15] is the left-most bit.
