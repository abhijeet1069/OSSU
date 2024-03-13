package ch1_strategyPattern.animal;

public class Dog implements Animal{

	@Override
	public void makeSound() {
		bark();
		
	}
	
	private void bark() {
		System.out.println("Wough Wough!!");
	}

}
