# Memory

Memory is time based.

Combinational circuits like NAND, OR were not dependent on time, while sequential state is dependent
on previous state in time.

Combinational : out[t] = function(in[t])
Sequential : out[t] = function(in[t-1])

## Flip Flops

Remember one bit of information from t-1 so it can be used at time t.

Clocked data flip flop(DFF) : Remember previous input

## 1-bit register

Remember input bit "forever" : until requested to load a new value.
Register is most basic unit of memory.

## RAM units

A sequence of n addressable registers with addresses 0 to n-1

## Counters

For ex : Program Counter has load, reset and increment
