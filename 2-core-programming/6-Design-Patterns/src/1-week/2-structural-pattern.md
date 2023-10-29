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

```java

//target interface
public interface IWebRequester{
    public int request(Object);
}

//adapter class
public class WebAdapter implements IWebRequester{
    private WebService service;

    public void connect(WebService currentService){
        this.service = currentService;
    }

    public int request(Object request){
        Json result = this.toJson(request);
        Json response = service.request(result);
        if(response != null){
            return 200;
        }
        return 500;
    }

    private Json toJson(Object input) { ... }
}

// PS2 male
public class WebClient{
    private IWebRequester webRequester;

    public WebClient(IWebRequester webRequester){
        this.webRequester = webRequester;
    }

    private Object makeObject(){ ... }

    public void doWork(){
        Object object = makeObject();
        int status = webRequester.request(object);

        if(status == 200){
            System.out.println("OK");
        }
        else{
            System.out.println("Not OK");
        }
        return;
    }
}

//main program
public class Program{
    public static void main(String[] args){
        String webHost = "https://google.com";
        WebService service = new WebService(webHost); //WebService is USB female
        WebAdapter adapter = new WebAdapter();
        adapter.connect(service);
        WebClient client = new WebClient(adapter);
        client.doWork();
    }
}

```
