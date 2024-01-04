# Clean code

## Introduction

- "Honesty in small things is not a small thing."

- The ratio of time spent reading vs. writing is well over 10:1. We are constantly reading old code as part of the effort to write new code.
Because this ratio is so high, we want the reading of code to be easy, even if it makes the writing harder.

## Meaningful Names

- names should reveal intent.

```java
//bad design
int d; // elapsed time in days

//good design
int elapsedTimeInDays; 
int daysSinceCreation; 
int daysSinceModification; 
int fileAgeInDays;
```

- You also don’t need to prefix member variables with m_ anymore. Your classes and functions should be small enough that you don’t need them. And you should be using an editing environment that highlights or colorizes members to make them distinct.

- Methods should have verb or verb phrase names like postPayment, deletePage, or save. Accessors, mutators, and predicates should be named for their value and prefixed with get, set, and is according to the javabean standard.
Say what you mean. Mean what you say.
