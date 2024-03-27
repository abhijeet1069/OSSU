# 2-Working with Diagrams

Loading a diagram up with lots of adornments is possible, but counter-productive. Keep your diagrams simple and clean. 
UML diagrams are not source code and should not be treated as the place to declare every method, variable, and relationship.

## Bad design

![Unoptimised cell phone class diagram ](../../res/uml-for-java/chapter-2/cell-phone-class-diagram.png)

```java
//Here Button class has been binded to Dialler, and can't be used anywhere else without invoking Dialler

public class Button{
    private Dialler dialler;
    public Button(Dialler dialler){
        this.dialler = dialler;
    }
}
```

```java

public class ButtonDiallerAdapter implements ButtonListener{
    private int digit;
    private Dialler dialler;

    public ButtonDiallerAdapter(int digit, Dialler dialler){
        this.digit = digit;
        this.dialler = dialler;
    }

    public void buttonPressed(){
        dialler.digit(digit);
    }
}
```

## When to draw diagrams

* Draw diagrams when several people need to understand the structure of a particular part of the design because
  they are all going to be working on it simultaneously. Stop when everyone agrees that they understand.
* Draw diagrams when two or more people disagree on how a particular element should be designed, and you want team consensus.
  Put the discussion into a timebox choose a means for deciding, like a vote, or an impartial judge. Stop at the end of the timebox,
  or when the decision can be made. Then erase the diagram.
* Draw diagrams when you just want to play with a design idea, and the diagrams can help you think it through. Stop when you’ve gotten
  to the point that you can finish your thinking in code. Discard the diagrams.
* Draw diagrams when you need to explain the structure of some part of the code to someone else, or to yourself. Stop when the explanation
  would be better done by looking at code.
* Draw diagrams when it’s close to the end of the project and your customer has requested them as part of a documentation stream for others.

## When not to draw diagrams

* Don’t draw diagrams because the process tells you to.
* Don’t draw diagrams because you feel guilty not drawing them or because you think that’s what good designers do. 
  Good designers write code and draw diagrams only when necessary.
* Don’t draw diagrams to create comprehensive documetation of the design phase   prior to coding. Such documents are
  almost never worth anything and consume immense amounts of time.
* Don’t draw diagrams for other people to code. True software architects participate in the coding of their designs,
  so that they can lay in the bed they have made.

## Ideal Use Case

For a project team of 12 people working on a project of a million lines of Java, I would have a total of 25 to 200 pages of persistent
documentation, with my preference being for the smaller.

I would put this documentation into a wiki, or some collaborative authoring tool so that anyone on the team can have access to it on
their screens and search it, and anyone can change it as need be. It takes a lot of work to make a document small, but that work is
worth it. People will read small documents. They won’t read 1,000 pages tomes.

