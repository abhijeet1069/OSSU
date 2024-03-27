# Inheritance Issues

Misuse of inheritance can lead to bad software. If following questions means yes
then it is a bad design decision.

* Am I using inheritance to simply share attributes and behavior without further adding
  anything special in my subclasses?

## Don't break the Liskov Substitution principle

The principle defines that objects of a superclass shall be replaceable with objects of its subclasses without breaking the application.

## Design decisions

Given how complicated a problem can be. We can refine our model using.

* Abstraction
    What attributes and behaviors you need to model in a class through abstraction?

* Encapsulation
    How are these attributes and behavior grouped together and accessed through encapsulation?

* Decomposition
    Can my classes be simplified into smaller parts using decomposition?

* Generalization
    Are there common things across my objects that can be generalized.
