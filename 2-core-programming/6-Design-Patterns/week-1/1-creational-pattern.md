# Creational Patterns

## Singleton Pattern

The singleton pattern is a design pattern that restricts the instantiation of a class to one object.

```java

public class SingleTon {
    private static SingleTon obj = null;

    protected SingleTon() {}
 
    public static SingleTon getInstance() {
     if(obj == null) {
      obj = new SingleTon();
  }
  return obj;
 }
}

```

## Factory Method Pattern

Factory Method is a creational design pattern that provides an interface for creating objects in a superclass, but allows
subclasses to alter the type of objects that will be created.

```java
public abstract class KnifeStore{ //can't create objects of abstract class
    
    abstract Knife createKnife(String knifeType); //Factory method : subclass will define this method
    
    public Knife orderKnife(String knifeType){
        Knife knife;

        knife = createKnife(knifeType);

        knife.sharpen(); //common for all knives
        knife.polish();
        knife.package();

        return knife;
    }
}

//subclass
public BudgetKnifeStore extends KnifeStore{

    Knife createKnife(String knifeType){
        if(knifeType.equals("steak")){
            return new BudgetSteakKnife();
        }
        else if(knifeType.equals("chefs")){
            return new BudgetChefKnife();
        }
        //..more types
        else{
            return null;
        }
    }
}

```
