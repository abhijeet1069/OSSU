# Hardware Description Language

HDL is a functional/declarative language.

Designing XOR gate

Truth Table
a b out
0 0  0
0 1  1
1 0  1
1 1  0

## HDL code

```hdl
/*XOR gate : out = (a AND NOT(b)) OR (b AND NOT(a))*/

CHIP Xor{
    IN a,b;
    OUT out;

    Not (in=a, out=nota);
    Not (in=b, out=notb);
    And (a=a, b=notb, out=aAndNotb);
    And (a=nota, b=b, out=notaAndb);
    Or (a=aAndNotb, b=notaAndb, out=out);
}

```
