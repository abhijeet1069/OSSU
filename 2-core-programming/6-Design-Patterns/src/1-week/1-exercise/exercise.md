# Adapter pattern exrcise

```java

//CoffeeMachineInterface.java

public interface CoffeeMachineInterface {
    public void chooseFirstSelection();
    public void chooseSecondSelection();
}


//OldCoffeeMachine.java
public class OldCoffeeMachine {
    public void selectA(){ ... }
    public void selectB(){ ... }
}

//CoffeeTouchscreenAdapter.java
public class CoffeeTouchscreenAdapter implements CoffeeMachineInterface {
    private NewCoffeeMachine newMachine;

    public void connect(NewCoffeeMachine newMachine){
        this.newMachine = newMachine;
    }

    public void chooseFirstSelection(){ 
        OldCoffeeMachine machine = new OldCoffeeMachine();
        machine.selectA();
    }

    public void chooseSecondSelection(){
        OldCoffeeMachine machine = new OldCoffeeMachine();
        machine.selectB();
     }
}

public class Main(){
    public static void main(String[] args){
        NewCoffeeMachine machine = new CoffeeMachine();
    }
}

```
