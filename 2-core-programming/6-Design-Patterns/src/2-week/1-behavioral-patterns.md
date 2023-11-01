# Behavioral Design Pattern

## Template Method Pattern

Template method is a behavioral design pattern that defines the skeleton of an algorithm in
the superclass but lets subclasses override specific steps of the algorithm without changing
its structure.

```java
public abstract class makeRecepie{

    public final void makeRecepie(){ //subclasses cant modify this method
        boilWater(); //call methods to make recepie. Subclasses can't break this sequence
        addPasta();
        cookPasta();
        drainAndPlate();
        addSauce();
        addProtien();
        addGarnish();
    }

    protected abstract void addPasta(); //subclasses need to modify this accordingly
    protected abstract void addSauce();
    protected abstract void addProtien();
    protected abstract void addGarnish();

    private void boilWater(){ //nothing changes in subclass for this
        System.out.println("Boiling Water");
}
}

```

## Chain of Responsibility

Chain of responsibility is a behavioral design pattern that lets you pass requests along a chain of handlers.
Upon recieving a request, each handler decides either to process the request or to pass it to the next handler
in the chain.

## State Pattern

State is a behavioral design pattern that lets an object alter its behavior when its internal state changes.
Based on finite state automata.

```java
public interface State {
    public void insertDollar( VendingMachine vendingMachine);
    public void ejectMoney( VendingMachine vendingMachine );
    public void dispense( VendingMachine vendingMachine );
}

public class IdleState implements State {
    public void insertDollar( VendingMachine vendingMachine ) {
        System.out.println( "dollar inserted" );
        vendingMachine.setState(vendingMachine.getHasOneDollarState());
}

public void ejectMoney( VendingMachine vendingMachine ) {
    System.out.println( "no money to return" );
}

public void dispense( VendingMachine vendingMachine ) {
    System.out.println( "payment required" );
    }
}

public class HasOneDollarState implements State {
    public void insertDollar( VendingMachine vendingMachine ) {
        System.out.println( "already have one dollar" );
    }

    public void ejectMoney( VendingMachine vendingMachine ) {
        System.out.println( "returning money" );
        vendingMachine.doReturnMoney();
        vendingMachine.setState(
        vendingMachine.getIdleState());
}
    public void dispense( VendingMachine vendingMachine ) {
        System.out.println( "releasing product" );
        if (vendingMachine.getCount() > 1) {
            vendingMachine.doReleaseProduct();
            vendingMachine.setState(vendingMachine.getIdleState());
        } else {
            vendingMachine.doReleaseProduct();
            vendingMachine.setState(
            vendingMachine.getOutOfStockState());
        }
    }
}


public class PopMachine {
    private State idleState;
    private State hasOneDollarState;
    private State outOfStockState;
    private State currentState;
    private int count;
    
    public PopMachine( int count ) {
    // make the needed states
        idleState = new IdleState();
        hasOneDollarState = new HasOneDollarState();
        outOfStockState = new OutOfStockState();
        if (count > 0) { 
            currentState = idleState;
            this.count = count;
        } else {
            currentState = outOfStockState;
            this.count = 0;
    }
}

```

## Command Pattern

One purpose of using command pattern is to store and schedule different requests.

* Store commands into lists
* Manipulate them before they are completed
* Put them onto a queue.
* Redo/Undo

## Observer Pattern

We will have a subject superclass, that defines three methods:

* Allow a new observer to subscribe
* Allow a current observer to unsuscribe
* Notify all observers about a new blog post

Normally, we would refresh observor data hourly or per second. But these would create unnecessary requests.
A better approach is to notify observors once change has been done.

```java
public class Subject{
    private ArrayList<Observer> observers = new ArrayList<Observer>();

    public void registerObserver(Observer observer){
        observers.add(observer);
    }

    public void unregisterObserver(Observer observer){
        observers.remove(observer);
    }

    public void notify(){
        for(Observers o : observers){
            o.update();
        }
    }
}

public class Blog extends Subject{
    private String state;

    public String getState(){
        return state;
    }

    //blog responsibilities
}

public interface Observer{
    public void update();
}

public class Subscriber implements Observer{
    public void update(){
        
    }
}
```