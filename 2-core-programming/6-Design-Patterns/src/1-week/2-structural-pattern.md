# Structural Patterns

## Facade Pattern

A facade simply acts as a point of entry into your subsystem. Its a wrapper class that encapsulates
a subsystem in order to hide the subsystem's complexity.

```java

//design an interface
public interface IAccount{
    public void deposit(BigDecimal amount);
    public void withdraw(BigDecimal amount);
    public void transfer(BigDecimal amount);
    public int getAccountNumber();
}

//implmenting interface
public class Chequing implements IAccount{...}
public class Saving implements IAccount{...}
public class Investment implements IAccount{...}

//facade class - Used by client
public class BankService{
    private HashTable<int,IAccount> bankAccounts;

    public BankService(){
        this.bankAccounts = new Hashtable<int,IAccount>;
    }

    public int createNewAccount(String type, BigDecimal initAmount){
        IAccount newAccount = null;
        switch(type){
            case "chequing" : newAccount = new Chequing(intiAmount);
                    break;
            case "saving": newAccount = new Saving(initAmount);
                    break;
            case "investment" : newAccount = new Investment(initAmount);
                    break;
            default : System.out.println("Invalid account type");
                    break;
        }
        if(newAccount != null){
            this.bankAccounts.put(newAccount.getAccountNumber(), newAccount);
            return newAccount.getAccountNumber();
        }
        return -1;
    }

    public void transferMoney(int to, int from, BigDecimal amount){
        IAccount toAccount = this.bankAccounts.get(to); //valid statment. toAccount is quite flexible. It can take all accounts which have implemented IAccount interface
        IAccount fromAccount = this.bankAccounts.get(from);
        fromAccount.transfer(toAccount,amount);
    }
}

//client class
public class Customer{
    public static void main(String[] args){
        BankService myBankService = new BankService();

        int mySaving = myBankService.createNewAccount("saving",new BigDecimal(500.00));
        int myInvestment = myBankService.createNewAccount("investment", new BigDecimal(1000.00));

        myBankService.transferMoney(mySaving, myInvestment, new BigDecimal(300));

    }
}

```

## Adapter Pattern

Adapter design pattern is one of the structural design pattern and its used so that two unrelated interfaces can work together. The object that joins these unrelated interface is called an Adapter.

Java code in Eclipse workspace - Adapter that converts 220 volts to 12 volts.

## Composite Pattern

Composite design achieves two goals:
a) To compose nested structures of objects
b) To deal with the classes for these objects uniformly

```java
//interface
public interface IStructure{
    public void enter();
    public void exit();
    public void location();
    public String getName();
}

public class Housing implements IStructure{

    private ArrayList<IStructure> structures;
    private String address;

    public void enter(){...}
    public void exit(){...}
    public void location{...}
    public String getName{...}

    public int addStructure(IStructure component){
        this.structures.add(component);
        return this.structures.size() - 1 ;
    }

    public IStructure getStructure(int componentNumber){
        return this.structures.get(componentNumber);
    }
}

//implment leaf class

public abstract class Room implements IStructure{
    public string name;

    public void enter(){...}
    public void exit(){...}
    public void location{...}
    public String getName{...}
}

//client class

public class Program{
    public static void main(String[] args){
        Housing building = new Housing("Pagoda")
        Housing floor1 = new Housing("Pagoda-1st floor");
        int firstFloor = building.addStructure(floor1);

        Room washroom1men = new Room("1st Floor Men's Washroom");
        Room washroom1women = new Room("1st Floor Women's Washroom");
        Room common1 = new Room("1st Floor Common Area");

        int firstMens = floor1.addStructure(washroom1men);
        int firstWomans = floor1.addStructure(washroom1women);
        int frstCommon = floor1.addStructure(common1);

        building.enter();
        Housing currentFloor = building.getStructure(firstFloor);
        currentFloor.enter();
        Room currentRoom = currentFloor.getStructure(firstMens);
        currentRoom.enter();

    }
}

```

## Proxy Design Pattern

* Proxy class is used to wrap the real subject class.
* To have a polymorphic design so that the client class can expect the same interface
  for proxy and real subject classes.
* To use a lightweight proxy in place of a resource intensive object until it is actually needed.

```java
//subject interface
public interface IOrder{
    public void fulfillOrder(Order);
}

//real subject class
public class Warehouse implments IOrder{
    private Hashtable<String,Integer> stock;
    private String address;

    //constructors, getters, setters

    public void fulfillOrder(Order order){
        for(Item item : order.itemList)
            this.stock.replace(item.sku, stock.get(item)-1);
    }

    public int currentInventory(Item item){
        if(stock.containsKey(item.sku))
            return stock.get(item.sku).intValue()
        return 0;
    }
}

//proxy class
public class OrderFulfillment implements IOrder{
    private List<Warehouse> warehouses;

    public void fulfillOrder(Order order){
        for(Item item : order.itemList){
            ...
        }
        return;
    }
}

```

## Decorator Pattern

We can add any number of behavior dynamically to an object at runtime by using aggregation
as a substitute for pure inheritance.

```java

//component interface
public interface WebPage{
    public void display();
}

//implement the interface with base concrete component class
public class BasicWebPage implements WebPage{
    private String html = ...;
    private String styleSheet = ...;
    private String scripts = ...;

    public void display(){
        //show basic webpage
    }
}

//implement interface with your abstract decorator class

public abstract class WebPageDecorator implements WebPage{
    protected WebPage page;

    public WebPageDecorator(WebPage webpage){
        this.page = page;
    }

    public void display(){
        this.page.display();
    }
}

public class AuthorizedWebPage extends WebPageDecorator{
    public AuthorizedWebPage(WebPage decoratedPage){
        super(decoratedPage);
    }

    public void authorizedUser(){
        ...
    }

    public display(){
        super.display();
        this.authorizedUser();
    }
}

public class AuthenticatedWebPage extends WebPageDecorator{
    public AuthenticatedWebPage(WebPage decoratedPage){
        super(decoratedPage);
    }

    public void authenticateUser(){
        ...
    }

    public display(){
        super.display();
        this.authorizedUser();
    }
}

//client
public class Program{
    public static void main(String[] args){
        WebPage myPage = new BasicWebPage();
        myPage = new AuthorizedWebPage(myPage);
        myPage = new AuthenticatedWebPage(myPage);
        myPage.display();
    }
}
```
