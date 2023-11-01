# Code smells

Prevent code smells, such that you code is Flexible, Reusible and Maintainable

## Comments

No comment is a bad sign, as well as too much comments. 

## Duplicated code

Duplicated code is when you have blocks of code that are similar but have slight differences. These block of code appear in
multiple places in your software. (Don't Repeat Yourself)

## Long methods

Too much lines in a method is a code smell.

## Large Classes

The class keeps larger and larger and becomes difficult to maintain.

## Long parameter list

Use objects as parameters instead.

## Divergent Change

The divergent change code smells occurs when you have to change a class in many different ways, for many
different ways, for many different reasons.

## Shotgun Surgery

A change in one place required you to fix many other areas in the code as a result. This could happen when
trying to add a feature, adjust code, fix bugs or change algorithms.

## Feature Envy

A method accesses the data of another object more than its own data.

## Inappropriate Intimacy

One class uses the internal fields and methods of another class.

## Message chains

A message chain occurs when a client requests another object, that object requests yet another one, and so on. These chains mean
that the client is dependent on navigation along the class structure. Any changes in these relationships require modifying the client.

## Primitive Obsessions

If you have a large variety of primitive fields, it may be possible to logically group some of them into their own class. 
Even better, move the behavior associated with this data into the class too.

## Switch statements

Instead of switch statement, try to use polymorphism.

## Speculative Generality

Speculative Generality occurs when you make a superclass interface, or code that is not needed at that time, but you think
you may use it some day.

## Refused Bequest

Someone was motivated to create inheritance between classes only by the desire to reuse the code in a superclass. 
But the superclass and subclass are completely different.
