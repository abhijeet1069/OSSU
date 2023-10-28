# Creational Patterns

## Singleton Pattern

* Enforces one and only one object of a Singleton class.
* Has a singleton object globally accessible.

```java
public class ExampleSingleton{
    
    private static ExampleSingleton uniqueInstance = null;

    private ExampleSingleton(){
        ...
    }

    public static ExampleSingleton getInstance(){
        if(uniqueInstance == null){
            uniqueInstance = new ExampleSingleton();
        }
        return uniqueInstance;
    }
    ...
}
```

## Factory Method Pattern

The Factory Method design intent is to define an interface for creating objects, but let the subclasses decide
which class to instantiate. (Coding to an interface not an implmentation)

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
