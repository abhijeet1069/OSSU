# Design Principles

## Liskov Substituion Principle

Liskov Substitution principle helps us determine whether inheritance has been used correctly.
The principle defines that objects of a superclass shall be replaceable with objects of its subclasses without breaking the application.

## Open/Close Principle

This prinple states that the classes should be open for extension but closed to change. The open/closed principle is used to keep the
stable parts of your system separate from varying parts. While you want to be able to add more features to your system, you don't want
to do it at the expense of disrupting something that workd=s. By using extension over change, you can work on the varying parts without
introducing unwanted side effects into the stable parts.

A class is considered close to editing once:

* Tested to be functioning properly
* All the attributes and behavior are encapsulated
* Proven to be stable within your system.

A class can be extended using

* Inheritance of superclass
* The class is abstract and enforces open/closed principle through polymorphism

## Dependency Inversion Principle

The principle states that high level modules should depend on high level generalizations and
not low level details.

Interfaces and abstract classes are considered high level resources.
A concrete class is considered a low level resources.

## Composing Objects Principle

The principle states that classes should achieve code reuse through aggregation rather than inheritance.

The biggest drawback of composition is that you must provide implmentations for all behavior without the benefit
of inheritance to share code. This means that you might have very similar implementations across classes.

```java
//COMPOSITION
public class Job {
// variables, methods etc.
}

public class Person {

    //composition has-a relationship
    private Job job;

    //variables, methods, constructors etc. object-oriented

```

```java
//INHERITANCE
public class Animal {
// variables, methods etc.
}

public class Cat extends Animal{
}
```

## Interface Segregation Principle

The interface segrefation principle states that a class should not be forced to depend on methods it does not use.
This means that any classes that implement that interface, should not have "dummy" implementations of any methods
defined in the interface. Instead you should split large interfaces into smaller generalizations.

## Principle of least knowledge(Law of Demeter)

The underlying idea of this law is that classes should know about and interact with as few other classes as possible. This means
that any class should only communicate with its "immediate friends". These "friends" would be other classes that one class should
only know about. (reduces coupling)

A method should not invoke methods of any object that is not local.
A method, M, of an object should only call other methods if they are:

1. Encapsulated within the same object
2. Encapsulated within an object that is in the parameters of M
3. Encapsulated within an object that is instantiated inside the M
4. Encapsulated within an object that is referenced in an instance variable of the class for M
